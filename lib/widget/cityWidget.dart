import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CityWidget extends StatelessWidget {
  final String CityImage,CityName,CityDescription;
  const CityWidget(
      {super.key, required this.CityImage, required this.CityName, required this.CityDescription}
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 55.w,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10.0),

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(CityImage),
          Text(CityName,style: TextStyle(fontSize: 25),),
          SizedBox(height: 5,),
          Text(CityDescription)
        ],
      ),

    );
  }
}
