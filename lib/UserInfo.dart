import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  final String name;
  const UserInfo({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("User Page"),

        ),
        body: Column(
          children: [

            Text(name,style: TextStyle(fontSize: 30,color: Colors.green),),

            ElevatedButton(onPressed: (){
              Navigator.pop(context);

            }, child: Text("Back")),
            ElevatedButton(onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>page1()));
            }, child: Text("Next"))

          ],
        ));
  }
}