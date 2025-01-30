import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_work/Module9_class2.dart';
import 'package:flutter_work/Module9_class_1_mediaQuery_wrap.dart';
import 'package:flutter_work/module9_class3_sizer_responsiveBuilder.dart';
import 'Home.dart';
import 'package:sizer/sizer.dart';

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {

    return Sizer(
        builder: (context, orientation, screenType){

    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
          primaryColor: Colors.deepPurpleAccent,
          appBarTheme : AppBarTheme(
            color: Colors.red,
            centerTitle: true,
          ),
          scaffoldBackgroundColor: Colors.white,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
              )
          )
      ),
      title: 'Ostad Flutter app',
      home: sizerResponsiveBuilder(),

    );
  }
    );
  }
}