import 'package:flutter/material.dart';
import 'package:flutter_work/Module9_class_1_mediaQuery_wrap.dart';
import 'Home.dart';

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
          scaffoldBackgroundColor: Colors.white,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
              )
          )
      ),
      title: 'Ostad Flutter app',
      //home: MediaQueryExample(),
      home:LayoutBuilderExample(),
    );
  }
}