import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  final int days = 30;
  final String name ="Sachin!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Catalog App',style: TextStyle(fontWeight: FontWeight.bold),)),

      ),
      body: Center(
          child: Container(
            child: Text(
              'Welcome to $days days flutter development by $name',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
      ),
      drawer: Drawer(),
    );

    }
}
