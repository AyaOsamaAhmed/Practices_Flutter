import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:untitled/database/student.dart';

class DatabaseHelper {

  static final DatabaseHelper instance = DatabaseHelper._init();

  static Database? _database ;
  final String databaseName ='students.db';
  final String studentTableName = 'students';

  //cancel constructor -> private ....  no object outside class
  DatabaseHelper._init();


  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB(databaseName);
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 2 ,
      onCreate: _createDB,
    );
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $studentTableName(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        age INTEGER NOT NULL
      )
    ''');
  }

  ///////////////////////////////////////////////

  Future<int>  insertStudent (Map<String , dynamic> student) async{
    final db = await instance.database;
    return await db.insert(studentTableName, student); //returns the id of the last inserted row
  }
  Future<int>  insertStudent2 (Student student) async{
    final db = await instance.database;
    return await db.insert(studentTableName, student.toMap()); //returns the id of the last inserted row
  }


  /////////////////// GET - SELECT ////////////
  Future<List<Map<String,dynamic>>> getAllStudents () async {
    final db = await instance.database;
    return await db.query(studentTableName);
  }

  Future<List<Student>> getAllStudents2 () async {
    final db = await instance.database;
    final result = await db.query(studentTableName);
    return result.map((e) => Student.fromMap(e)).toList();

  }

  ///////////////// update row by id ///////////
  Future<int> updateStudentById (int id , Map<String , dynamic> student) async{
    final db = await instance.database ;
    return await db.update(studentTableName, student , where: 'id = ?' , whereArgs: [id]);
  }


  ///////////////// update row by name and age  ///////////
 Future<int> updateStudentByName (String name , int age , Map<String , dynamic> student) async{
    final db = await instance.database ;
    return await db.update(studentTableName, student , where: 'name = ? AND age = ?' , whereArgs: [name , age]);
  }

  //////////////// delete student by id ///////////////

  Future<int> deleteStudent( int id)async{
    final db = await instance.database ;
    return await db.delete(studentTableName,where: 'id = ?',whereArgs: [id]);
  }


  Future<int> deleteAllStudent( )async{
    final db = await instance.database ;
    return await db.delete(studentTableName);
  }

////////////////////


}