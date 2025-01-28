import 'package:flutter/material.dart';

class module9Class2 extends StatelessWidget {
  const module9Class2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module9 Class2"),
      ),
      body: SingleChildScrollView(


      child: Column(
        children: [
          Container(
            color: Colors.blue,
            child: AspectRatio(
                aspectRatio: 16/9,
              child: Container(
                color: Colors.amber,
              ),
            ),
          ),

          Center(
            child: SizedBox(
              height: 100,
              width: 250,
                child: ColoredBox(color: Colors.green),
            ),
          ),

          SizedBox(height: 10,),

          Container(
            height: 350,
            width: 250,
            color: Colors.blue,
            child: FractionallySizedBox(
              widthFactor: 0.4,
              heightFactor:0.5,
              alignment: Alignment.topRight,
              child: Container(
                color: Colors.green,
                child: Center(
                  child: Text("my name is shanto",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),

          SizedBox(
          height: 330,
          width: 300,


          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
    ),
              SizedBox(height: 10,),

              Expanded(
                flex: 5,
                  child: Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              )
              )
            ],
          )
          ),

          SizedBox(height: 10,),

          Center(
            child: Stack(
              children: [
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),

                Positioned(
                  top: 40,
                  bottom: 40,
                  left: 40,
                  right: 40,
                  child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                ),

                Positioned(
                  top: 70,
                  bottom: 70,
                  left: 70,
                  right: 70,
                  child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20),
                  ),
                )
                )
              ],
            ),
          ),
          SizedBox(height: 50,),
        ],
      ),
      ),
    );
  }
}
