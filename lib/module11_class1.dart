import 'package:flutter/material.dart';
import 'package:flutter_work/widget/cityWidget.dart';
import 'package:sizer/sizer.dart';

class Module11Class1 extends StatefulWidget {
  const Module11Class1({super.key});

  @override
  State<Module11Class1> createState() => _Module11Class1State();
}

class _Module11Class1State extends State<Module11Class1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module 11 class 1"),
      ),
      body: Column(

        children: [
          ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("This is Snackbar"),
                  duration: Duration(seconds: 10),
                  action: SnackBarAction(label: "Undo", onPressed: () {}),
                ));
              },
              child: Text(
                "SnackBar",
                style: TextStyle(fontSize: 25),
              )),
          ElevatedButton(
              onPressed: () {

                showModalBottomSheet(
                    isDismissible: true,
                    context: context, builder: (context){
                  return Column(
                    children: [
                      Center(child:Text("This is Bottom Sheet")),
                      Container(
                        width: 100,
                        height: 150,
                        color: Colors.red,
                      )
                    ],
                  );
                });
              },
              child: Text(
                "Bottom Sheet",
                style: TextStyle(fontSize: 25),
              )),

          ElevatedButton(onPressed: (){
            showDialog(context: context, builder: (context){
              return AlertDialog(
                title: Text("Are you sure?"),
                content: Text("Are you sure to delete this ? "),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Cancel")),
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Okay")),
                ],

              );
            });
            
          }, child: Text("Alert Button",style: TextStyle(fontSize: 25),)),

          SizedBox(height: 10.h,),
          Text("Top Cities",style: TextStyle(fontSize: 25),),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(

              children: [
                SizedBox(width: 10.w,),
                CityWidget(CityImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyZKy38nVui6Cfnxv0vv-dxIce70CZJQd7jA&s", CityName: "Denmark", CityDescription: "Denmark is a Nordic country in Northern Europe."),
                SizedBox(width: 10.w,),
                CityWidget(CityImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP0jv84fuJYPFnlUvpd5EemArDVbyzW8CYcw&s", CityName: "Spain", CityDescription: "It is the largest country in Southern Europe ."),
                SizedBox(width: 10.w,),
                CityWidget(CityImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQocb8Op3B50O8g3WtQTlVzWWtgYnx4b8Ysg&s', CityName: 'Thailand', CityDescription: 'dfgr erfg  regfg rfgedrfg fgreg',),
    ]        ),

          )

        ],
      ),
    );
  }
}
