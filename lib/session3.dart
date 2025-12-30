import 'package:flutter/material.dart';


//textRich  -- text span  --> for handle more style for text in line 
//ElevatedButton
void main() {
  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: SafeArea(
              child: Center(
                child: Column(
                  children: [
                    ElevatedButton(onPressed: null,// if it is not active , make on pressed is null
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    //    borderRadius: BorderRadiusGeometry.circular(30) // if it is not allow , delete border
                      )
                    )
              
                    ,child: Text('Not Active Button')),
              
                    ElevatedButton(onPressed: (){
                      debugPrint("print me");
                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyanAccent,
                          animationDuration: Duration(seconds: 5), // slow click !!!!
                          elevation: 10
                        ),
                     child:
                    Text('Click me!' , style: TextStyle(
                      color: Colors.black ,
                      fontSize: 20
                    ),)
                    ),
              
                    TextButton(onPressed: (){},
                        style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                        child: Text('Reset Password',
                    style: TextStyle(fontSize: 30),)),
              
                    IconButton(onPressed: (){}, icon: Icon(
                      Icons.delete,
                      size: 50,
                    )),
                              FloatingActionButton(onPressed: (){},
                        splashColor: Colors.yellow,
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.add),),
                    
                    Image(image: NetworkImage('https://picsum.photos/200')),
                    Image.asset('assets/images/profile.png',
                      width: 100,
                      height: 100,),
                    Image(image:
                    AssetImage('assets/images/profile.png',),
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,)

                  ],
                ),
              ),
            ),
          )
      )
  );
}

class Application extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }

}