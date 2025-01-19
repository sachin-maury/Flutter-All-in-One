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

    var arrNames = ['Shakti','Sadanand','Sachin','Shesh','Utkarsh','Ankit','Binod','Sunil','Ashok','Sanjay','Abhi','Ansh'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:ListView.separated(itemBuilder: (context, index){
          return ListTile(
            leading: Text('${index+1}'),//for index value start with one we can use like this!
            title: Text(arrNames[index]),
            subtitle: Text('Number'),
            trailing: Icon(Icons.accessibility),
          );
      },
        itemCount: arrNames.length,
        separatorBuilder: (context, index){
        return Divider(height: 100, thickness: 2,);
        },
      )
    );
  }
}
