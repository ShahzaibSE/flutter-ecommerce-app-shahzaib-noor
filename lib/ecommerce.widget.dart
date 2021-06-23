import 'package:flutter/material.dart';

class ECommerce extends StatefulWidget {
  const ECommerce({ Key? key }) : super(key: key);

  @override
  _ECommerceState createState() => _ECommerceState();
}

class _ECommerceState extends State<ECommerce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('E-Comm App', style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black
        )),
        actions: [
          GestureDetector(
            child: Container(
              child: 
                Icon(Icons.notifications),
                padding: const EdgeInsets.only(right: 10.0, left: 10.0),
            ),
          )
        ],
      ),
      body: Container(
        child: Center(
          child: Text('Welcome')
        )
      )
    );
  }
}