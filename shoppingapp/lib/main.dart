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
                      color: Colors.pinkAccent,
                    ),

                    Positioned( //control the widget
                      bottom: 55.0,
                      right: 100.0,
                      child: Container(
                        height: 350.0,
                        width: 350.0,

                        //use box declaration class for decoration
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(320),
                          color: Colors.cyan
                        ),

                      ),
                    ),

                    Positioned( //control the widget
                      bottom: 80.0,
                      left: 150.0,
                      child: Container(
                          height: 330.0,
                          width: 300.0,

                          //use box declaration class for decoration
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              color: Colors.blueAccent

                          )
                      ),
                    ),

                    Positioned( //control the widget
                      bottom: 90.0,
                      left: 190.0,
                      child: Container(
                        height: 290.0,
                        width: 300.0,

                          //use box declaration class for decoration
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(300),
                          color: Colors.yellowAccent

                        )
                      ),
                    ),

                    //column alignment ake children locate karana vidiha
                    //column and row use kara kotuwak gena emagin profile picture ekata kotuwak create kraganna
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 14.0),
                        Row(
                          children: <Widget>[
                            SizedBox(width: 14.0),
                            Container(
                              alignment: Alignment.topLeft,
                              height: 45.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                border: Border.all(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                  width: 2.0

                                  //images contain in images folder
                                )
                              ),
                            )
                          ],
                        )
                      ],
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


