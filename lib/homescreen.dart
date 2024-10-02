import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget{
  const HomeScreen ({super.key});
  @override  
  State<HomeScreen>createState()=> _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>{
  int counter=0;
  void incrementCounter(){
    setState(() {
      counter++;
    });
  }
  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("StatefulWidget Example"),
      ),
      body: Column(
        children: [
          Text("You have pushed the button this many times"),
          Text("$counter"),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        incrementCounter();
      },
      child: Icon(Icons.add),
      ),
    );
  }
}