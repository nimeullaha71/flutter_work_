import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class sizerResponsiveBuilder extends StatelessWidget {
  const sizerResponsiveBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sizer Module 9"),
      ),

      body: SingleChildScrollView(
      child: Column(
        children: [
          Image.network(

              height: 200,
              width: 200,
              'https://gratisography.com/wp-content/uploads/2024/11/gratisography-augmented-reality-800x525.jpg'),

        Image.asset("asset/premium_photo.jpg"),

          Container(
            height: 10.h,
            width: 20.w,
            color: Colors.red,
          ),
          Text("My name is shanto",style: TextStyle(color: Colors.amber,fontSize: 20.sp),)
        ],
      ),
      )
    );
  }
}
