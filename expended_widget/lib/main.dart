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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
        title: Text(widget.title),
      ),
      body: Row(
      //  mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: 50,
              height: 100,
              color: Colors.pink,
            
            ),
          ),
          Expanded(
            child: Container(
              width: 50,
              height: 100,
              color: Colors.greenAccent,
            ),
          ),
          Expanded(
            child: Container(
              width: 50,
              height: 100,
              color: Colors.green,
            ),
          ),
           Expanded(
            child: Container(
              width: 50,
              height: 100,
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Container(
              width: 50,
              height: 100,
              color: Colors.black,
            ),
          ),

        ],
      )
    );
  }
}
