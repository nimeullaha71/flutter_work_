import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Ostad flutter app 1",
    home:SafeArea(child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Flutter App",
            style: TextStyle(
              fontSize: 40,
              color: Colors.deepPurple,
            ),
          ),
          centerTitle: true,

        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("My name is shanto",style:
              TextStyle(
                color: Colors.lightBlue,
                fontSize: 30,
              ),),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [


                    Text("shanto1",style:
                    TextStyle(
                      color: Colors.amber,
                      fontSize: 34,
                    ),),
                    Text("shihab",style:
                    TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 25,
                    ),),
                  ]
              ),
              Text("Our family member is 5",style:
              TextStyle(
                color: Colors.amber,
                fontSize: 34,
              ),),
              Text("My Univerrsity name is daffodil international university",style:
              TextStyle(
                color: Colors.deepPurple,
                fontSize: 25,
              ),),
            ]
        )
    )
    ),
  ));
}