import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _count =0;
  increementCounter(){
    setState(() {

    });
    _count++;
    print(_count);
  }
  decrementCounter(){
    setState(() {
      _count--;
    });
    print(_count);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(_count.toString(),style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.red),),

      ),

      floatingActionButton: FloatingActionButton(onPressed: increementCounter,child: Icon(Icons.add,size: 40),),
      //floatingActionButton: FloatingActionButton(onPressed: decrementCounter,child: Icon(Icons.remove,size: 30,),),
    );
  }
}
