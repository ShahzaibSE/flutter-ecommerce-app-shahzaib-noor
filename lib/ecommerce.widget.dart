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
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        child: Text('Items', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26
                          )
                        ), 
                        alignment: Alignment.topLeft,
                      )
                    ]
                  )
                ),
                Container(
                  margin: const EdgeInsets.only(top:30, right: 20),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        child: InkWell(child: Text('More Items', style: TextStyle(
                            fontSize: 17,
                            color: Colors.purple
                          )
                        )), 
                        alignment: Alignment.topRight,
                      )
                    ]
                  )
                ),
              ]
            )
          )
        )

      )
    );
  }
}