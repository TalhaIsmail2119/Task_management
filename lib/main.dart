// import 'package:day26/screen/nav-bar/navbar.dart';
// import 'package:day26/screen/on_boarding_page.dart';
// import 'package:day26/widget/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:work_1/screen/nav-bar/navbar.dart';
import 'package:work_1/widget/common_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundClr,
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: backgroundClr
        ),

        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,

      ),
      home:NavBarPage()
    );
  }
}
