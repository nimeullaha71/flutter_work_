import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.deepPurpleAccent,
          appBarTheme : AppBarTheme(
            color: Colors.red,
            centerTitle: true,
          ),
          scaffoldBackgroundColor: Colors.white70,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
              )
          )
      ),
      title: 'Ostad Flutter app',
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

    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(

        title: Column(
          children: [
            Text(
              "Ostad Flutter 2",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ],
        ),

      ),
      body: Column(
        children: [
          Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter your mail",
                        label: Text("Email"),
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Empty email is not allow";
                        }
                        else
                          return null;

                      },
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Your password",
                        label: Text("Password"),
                      ),
                      validator: (value){
                        if (value == null || value.isEmpty || value.length < 8){
                          return "password must be at least 8 character";
                        }
                        else
                          return null;
                      },
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(onPressed: (){
                      if(_formKey.currentState!.validate()){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>UserInfo()));
                      }
                    }, child: Text("Submit",style: TextStyle(fontSize: 25),
                    ))
                  ],

                ),
              )),
          SizedBox(
            height: 300,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              itemCount: 20,
              itemBuilder: (context, index) {
                return Container(

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.red
                    ),

                    child: Center(
                        child: Icon(Icons.mobile_friendly,size: 50,)
                    )

                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print("Floating action button");
        },
        label: Text("Add New"),
      ),
    );
  }
}


class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("User Page"),

        ),
        body: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);

            }, child: Text("Back")),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>page1()));
            }, child: Text("Next"))

          ],


        ));
  }
}

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Page number 1"),

      ),

      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Back")),
          ElevatedButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
          }, child: Text("Home Page"))
        ],
      ),
    );
  }
}


