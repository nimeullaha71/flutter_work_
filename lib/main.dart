import 'package:flutter/material.dart';

void main() {
  runApp(myApp()
  );
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController _numberController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Flutter App 2",
            style: TextStyle(
              fontSize: 31,
              color: Colors.deepPurpleAccent,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [

            Padding(
                padding: const EdgeInsets.only(left: 20,right: 30,top: 40),
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.amberAccent,
                hintText: "Enter Your email",
                hintStyle: TextStyle(color: Colors.red,fontSize: 20),
                hintMaxLines: 2,
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.deepPurpleAccent,fontSize: 16),
                helperText: "your Email",
                helperStyle: TextStyle(fontSize: 18,color: Colors.deepPurple),
                // prefixText: "Name : ",
                // suffixText: "Ullaha",
                prefixIcon: Icon(Icons.email),
                suffixIcon: Icon(Icons.send),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber,width: 7),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red,width: 5),
                  borderRadius: BorderRadius.only(topRight:Radius.circular(15)),
                )

              ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 30,top: 40),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.amberAccent,
                    hintText: "Enter Your Password",
                    hintStyle: TextStyle(color: Colors.red,fontSize: 20),
                    hintMaxLines: 2,
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.deepPurpleAccent,fontSize: 16),
                    helperText: "Please Password",
                    helperStyle: TextStyle(fontSize: 17,color: Colors.deepPurple),
                    // prefixText: "Name : ",
                    // suffixText: "Ullaha",
                    prefixIcon: Icon(Icons.password),
                    // suffixIcon: Icon(Icons.send),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber,width: 7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red,width: 5),
                      borderRadius: BorderRadius.only(topRight:Radius.circular(15)),
                    )

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 30,top: 40),
              child: TextField(
                controller: _numberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.amberAccent,
                    hintText: "Enter Your phone",
                    hintStyle: TextStyle(color: Colors.red,fontSize: 20),
                    hintMaxLines: 2,
                    labelText: "Phone",
                    labelStyle: TextStyle(color: Colors.deepPurpleAccent,fontSize: 16),
                    helperText: "Please Phone",
                    helperStyle: TextStyle(fontSize: 17,color: Colors.deepPurple),
                    // prefixText: "Name : ",
                    // suffixText: "Ullaha",
                    prefixIcon: Icon(Icons.phone),
                    // suffixIcon: Icon(Icons.send),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber,width: 7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red,width: 5),
                      borderRadius: BorderRadius.only(topRight:Radius.circular(15)),
                    )

                ),
              ),
            ),
ElevatedButton(onPressed: (){
  _passwordController.text.length>6?print("password is strong"):print("passwprd is weak");
  _numberController.text;
  _emailController.text;
  _passwordController.text;
}, child: Text("Submit")),

ElevatedButton(onPressed: (){
  _numberController.clear();
  _passwordController.clear();
  _emailController.clear();
}, child: Text("Clear")),

/////////////////-----old class---------------/////////
            // Center(
            //     child: ElevatedButton(
            //         style: ElevatedButton.styleFrom(
            //           backgroundColor: Colors.amber,
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(5),
            //           ),
            //         ),
            //         onPressed: () {
            //           print("This is a button");
            //         },
            //         child: Text(
            //           "button",
            //           style:
            //           TextStyle(fontSize: 21, color: Colors.deepPurple),
            //         ))),
            // Icon(
            //   Icons.add_a_photo,
            //   size: 50,
            //   color: Colors.red,
            // ),
            // TextButton(
            //   onPressed: () {
            //     print("I am text button");
            //   },
            //   child: Text(
            //     "click Me",
            //     style: TextStyle(fontSize: 15, color: Colors.blue),
            //   ),
            // ),
            // IconButton(
            //     onPressed: () {
            //       print("I am a camera");
            //     },
            //     icon: Icon(
            //       Icons.add_a_photo,
            //       size: 50,
            //       color: Colors.lightBlue,
            //     )),
            // InkWell(
            //   onTap: () {
            //     print("I am inkwell");
            //   },
            //   onLongPress: () {
            //     print("I am inkwell Long Press");
            //   },
            //   onHover: (value) {
            //     print("i am inkwell Hover");
            //   },
            //   child: Container(
            //     height: 200,
            //     width: 200,
            //     margin: EdgeInsets.only(top: 50),
            //     alignment: Alignment.center,
            //     decoration: BoxDecoration(
            //         color: Colors.lightGreenAccent,
            //         borderRadius: BorderRadius.circular(20),
            //         border: Border.all(color: Colors.black, width: 3),
            //         gradient: LinearGradient(colors: [
            //           Colors.yellow,
            //           Colors.orange,
            //           Colors.red,
            //           Colors.white
            //         ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.cyan,
            //             offset: Offset(10, 5),
            //             blurRadius: 10,
            //             spreadRadius: 5,
            //           ),
            //         ]),
            //     child: Text(
            //       "I am a container",
            //       style: TextStyle(color: Colors.deepPurple, fontSize: 16),
            //     ),
            //   ),
            // ),
            //
            // GestureDetector(
            //   onDoubleTap: () {
            //     print("I am GestureDetector double tap");
            //   },
            //   onLongPress: () {
            //     print("I am GestureDetector Long Press");
            //   },
            //
            //   child: Container(
            //     height: 200,
            //     width: 200,
            //     margin: EdgeInsets.only(top: 50),
            //     alignment: Alignment.center,
            //     decoration: BoxDecoration(
            //         color: Colors.lightGreenAccent,
            //         borderRadius: BorderRadius.circular(20),
            //         border: Border.all(color: Colors.black, width: 3),
            //         gradient: LinearGradient(colors: [
            //           Colors.white,
            //           Colors.indigo,
            //           Colors.cyan,
            //           Colors.red,
            //         ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.cyan,
            //             offset: Offset(10, 5),
            //             blurRadius: 10,
            //             spreadRadius: 5,
            //           ),
            //         ]),
            //     child: Text(
            //       "I am a container",
            //       style: TextStyle(color: Colors.deepPurple, fontSize: 14),
            //     ),
            //   ),),
          ],
        ));
  }
}

