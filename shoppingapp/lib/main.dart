// every dart file need that import packages
import 'package:flutter/material.dart';

void main() => runApp(ShoppingApp());

// stateless widget eka app eka purawatama ekama widihata thenawa
class ShoppingApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    // when we generate material app then should use
      return MaterialApp(

        //avoid the debug tag
        debugShowCheckedModeBanner: false,

        home: MyHomePage(),

      );
    }
  }

  //generate stateful   widget for MyHomePage
  class MyHomePage extends StatefulWidget {

    @override
    _MyHomePageState createState() => _MyHomePageState();
  }

  class _MyHomePageState extends State<MyHomePage> {

    //generate widget because that is stateful widget
    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 200.0,
                      width: double.infinity,
                      color: Colors.pinkAccent ,
                    )
                  ],
                )
              ],
            )
          ],
        )
      );
   }
  }


