import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Flutter App",
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text(
              "Flutter App 1",
              style: TextStyle(
                fontSize: 30,
                color: Colors.deepPurpleAccent,
              ),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        print("This is a button");
                      },
                      child: Text(
                        "button",
                        style:
                            TextStyle(fontSize: 20, color: Colors.deepPurple),
                      ))),
              Icon(
                Icons.add_a_photo,
                size: 50,
                color: Colors.red,
              ),
              TextButton(
                onPressed: () {
                  print("I am text button");
                },
                child: Text(
                  "click Me",
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
              ),
              IconButton(
                  onPressed: () {
                    print("I am a camera");
                  },
                  icon: Icon(
                    Icons.add_a_photo,
                    size: 50,
                    color: Colors.lightBlue,
                  )),
              InkWell(
                onTap: () {
                  print("I am inkwell");
                },
                onLongPress: () {
                  print("I am inkwell Long Press");
                },
                onHover: (value) {
                  print("i am inkwell Hover");
                },
                child: Container(
                  height: 200,
                  width: 200,
                  margin: EdgeInsets.only(top: 50),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.lightGreenAccent,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 3),
                      gradient: LinearGradient(colors: [
                        Colors.yellow,
                        Colors.orange,
                        Colors.red,
                        Colors.white
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.cyan,
                          offset: Offset(10, 5),
                          blurRadius: 10,
                          spreadRadius: 5,
                        ),
                      ]),
                  child: Text(
                    "I am a container",
                    style: TextStyle(color: Colors.deepPurple, fontSize: 15),
                  ),
                ),
              ),

              GestureDetector(
                onDoubleTap: () {
                  print("I am GestureDetector double tap");
                },
                onLongPress: () {
                  print("I am GestureDetector Long Press");
                },

              child: Container(
                height: 200,
                width: 200,
                margin: EdgeInsets.only(top: 50),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 3),
                    gradient: LinearGradient(colors: [
                      Colors.yellow,
                      Colors.orange,
                      Colors.red,
                      Colors.white
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.cyan,
                        offset: Offset(10, 5),
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                    ]),
                child: Text(
                  "I am a container",
                  style: TextStyle(color: Colors.deepPurple, fontSize: 15),
                ),
              ),)
            ],
          )),
    ),
  );
}
