main(){
  //syncronous programming
  // line by line

  printHello();
  printWelcome();
  printBye();

  //

  print('start');
  heavyTask();
  print('end');


  // Asyncronous
  print('1');
  Future.delayed(Duration(seconds: 3),(){
    print('2');
  });
  print('3');

}

void printHello () => print('Hello');
void printWelcome () => print('Welcome');
void printBye () => print('Bye');

void heavyTask(){
  for (int i = 0 ; i < 10000000 ; i++){
    print(i);
  }
}