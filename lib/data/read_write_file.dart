import 'dart:io';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';


  Future<String> readFile () async{
    final direction = await getApplicationDocumentsDirectory();
    final file = File('${direction.path}/data.txt');

    if( await file.exists()){
      print('File Read done ${await file.readAsString()}');
      return await file.readAsString();

    }else{
      return 'File Not Found';
    }
  }

  Future<void> writeFile (String doc) async {

    final direction = await getApplicationDocumentsDirectory();
    final file = File('${direction.path}/data.txt');


    final DateTime data = DateTime.now();
    String formate = DateFormat('yyyy-mm-dd').format(data);

    await file.writeAsString('$formate - $doc');
    print('data Added');
  }


