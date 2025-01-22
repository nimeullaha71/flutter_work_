import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
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
              padding: const EdgeInsets.only(left: 20, right: 30, top: 40),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.amberAccent,
                    hintText: "Enter Your email",
                    hintStyle: TextStyle(color: Colors.red, fontSize: 20),
                    hintMaxLines: 2,
                    labelText: "Email",
                    labelStyle:
                        TextStyle(color: Colors.deepPurpleAccent, fontSize: 16),
                    helperText: "your Email",
                    helperStyle:
                        TextStyle(fontSize: 18, color: Colors.deepPurple),
                    // prefixText: "Name : ",
                    // suffixText: "Ullaha",
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.send),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber, width: 7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 5),
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(15)),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 30, top: 40),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.amberAccent,
                    hintText: "Enter Your Password",
                    hintStyle: TextStyle(color: Colors.red, fontSize: 20),
                    hintMaxLines: 2,
                    labelText: "Password",
                    labelStyle:
                        TextStyle(color: Colors.deepPurpleAccent, fontSize: 16),
                    helperText: "Please Password",
                    helperStyle:
                        TextStyle(fontSize: 17, color: Colors.deepPurple),
                    // prefixText: "Name : ",
                    // suffixText: "Ullaha",
                    prefixIcon: Icon(Icons.password),
                    // suffixIcon: Icon(Icons.send),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber, width: 7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 5),
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(15)),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 30, top: 40),
              child: TextField(
                controller: _numberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.amberAccent,
                    hintText: "Enter Your phone",
                    hintStyle: TextStyle(color: Colors.red, fontSize: 20),
                    hintMaxLines: 2,
                    labelText: "Phone",
                    labelStyle:
                        TextStyle(color: Colors.deepPurpleAccent, fontSize: 16),
                    helperText: "Please Phone",
                    helperStyle:
                        TextStyle(fontSize: 17, color: Colors.deepPurple),
                    // prefixText: "Name : ",
                    // suffixText: "Ullaha",
                    prefixIcon: Icon(Icons.phone),
                    // suffixIcon: Icon(Icons.send),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber, width: 7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 5),
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(15)),
                    )),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  _passwordController.text.length > 6
                      ? print("password is strong")
                      : print("password is weak");
                  print(_numberController.text);
                  print("${_emailController.text}@gmail.com");
                  print(_numberController.text);
                },
                child: Text("Submit")),

            ElevatedButton(
                onPressed: () {
                  _numberController.clear();
                  _passwordController.clear();
                  _emailController.clear();
                },
                child: Text("Clear")),

            Text(
              "This is text - 1",
              style: TextStyle(color: Colors.cyan, fontSize: 19),
            ),
            Divider(
              color: Colors.red,
            ),
            Text(
              "This is text - 2",
              style: TextStyle(color: Colors.cyan, fontSize: 19),
            ),



            SizedBox(
              height: 150,
              width: 250,
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("Taufiqur Rahman ${index}"),
                    subtitle: Text("Software Engineer"),
                    leading: Icon(
                      Icons.account_circle,
                      size: 50,
                    ),
                    trailing: Icon(Icons.send),
                    onTap: () {
                      print("I'm ListTile");
                    },
                    onLongPress: () {
                      print("I'm ListTile long press");
                    },
                  );
                },
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Click me",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  )),
            ),
          ],
        ));
  }
}
