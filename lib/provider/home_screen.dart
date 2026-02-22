import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider/counter_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    
    return Scaffold(
      appBar: AppBar(title: Text('Provider counter'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Consumer
            Consumer(builder: (context,counter,child){
              return
                Text('${Provider.of<CounterProvider>(context).count}', style: TextStyle(color: Colors.green),);
            }),
          // Selector
            Selector<CounterProvider , int>(
              selector: (_,provider)=>provider.count,
              builder: (_,x,_){
                return Text('$x', style: TextStyle(color: Colors.red));
              },
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){
                    counter.increment();
                  }, icon: Icon(Icons.add)),
                  IconButton(onPressed: (){
                    Provider.of<CounterProvider>(context, listen: false).decrement();
                  }, icon: Icon(Icons.remove)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
