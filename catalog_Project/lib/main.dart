
import 'package:catalog_project/pages/home_page.dart';
import 'package:catalog_project/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
   //   home: HomePage(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.pink),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),

      routes: {
       "/":(context) =>HomePage(),
        "/home":(Context)=> HomePage(),
        "/Login":(context)=>LoginPage(),
      },
    );
  }
}
