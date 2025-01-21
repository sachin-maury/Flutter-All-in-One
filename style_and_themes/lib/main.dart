import 'package:flutter/material.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primarySwatch: Colors.blue,
        textTheme: TextTheme(
            headlineLarge:  TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Style and Themes'),
      ),
      body: Column(
        children: [
          Text('Sachin'),
          Text('Sachin',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),),
          Text('Sachin',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          Text('Sachin',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),),
        ],
      ),

    );
  }
}
