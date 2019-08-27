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
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                border: Border.all(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                  width: 2.0
                                ),
                                image: DecorationImage(
                                  image: AssetImage('images/user.jpg'), //images contain in images folder
                                )
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width-120), // using mediaquery we can build responsive page item(Screen size ekat anuwa width eka wenas wena pages)
                            Container(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                  icon: Icon(Icons.menu),
                                  onPressed: (){},
                                  color: Colors.lightGreen,
                              iconSize: 28.0,
                                   ),
                            ),
                            SizedBox(
                            height: 15.0
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0
                          ),
                        Padding(
                          padding: EdgeInsets.only(left: 30.0),//padding ekata eft eke sita 15.0 ka durin
                          child: Text(
                            "Hi Customers..",
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0,right: 20.0),
                          child: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(25.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.purple,
                                  size: 30.0
                                ),
                                contentPadding: EdgeInsets.only(left: 20.0,top: 15.0,bottom: 10.0), //padding eka  athulatha dewal add kirimata contentPadding use karai//EdgeInsets.only magin adhala padding eken depaththen location eka gani
                                hintText: "Search",//placeholder
                                hintStyle: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 20.0,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: "Rock Salt"
                                )
                              ),
                            )
                          ),
                        ),
                        SizedBox(
                          height: 10.0
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0
                ),
                Stack(
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Material(
                      elevation: 1.0,
                      child: Container(
                        height: 70.0,
                        color: Colors.white
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,//item athara gap eka samanawa pawathwaa ganimata
                        children: <Widget>[
                          Container(
                            height: 75.0,
                            width: MediaQuery.of(context).size.width/6,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/bag.jpg')
                                    )
                                  ),
                                ),
                                Text(
                                  'Baby Bag',
                                  style: TextStyle(
                                    fontFamily: "Quicksand"
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 75.0,
                            width: MediaQuery.of(context).size.width/5,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('images/hat.jpg')
                                      )
                                  ),
                                ),
                                Text(
                                  'Baby Hat',
                                      style: TextStyle(
                                        fontFamily: 'Quicksand'
                                      ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 75.0,
                            width: MediaQuery.of(context).size.width/5,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/cart.jpg')
                                    )
                                  ),
                                ),
                                Text(
                                  'Baby Cart',
                                  style: TextStyle(
                                    fontFamily: 'Quicksand'
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 75.0,
                            width: MediaQuery.of(context).size.width/5,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/cloths.jpg')
                                    )
                                  ),
                                ),
                                Text(
                                  'Baby Flock',
                                  style: TextStyle(
                                    fontFamily: 'Quicksand'
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 75.0,
                            width: MediaQuery.of(context).size.width/5,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/items-shoes.jpg")
                                    )
                                  ),
                                ),
                                Text(
                                  'Baby Shoe',
                                  style: TextStyle(
                                    fontFamily: 'Quicksand'
                                  ),
                                )
                              ],
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
      );
   }
  }

  //boolean using for if that is favourite then display with red color or special color
  Widget specialItemCard(String title,String imagePath,bool isLoved){

  return Padding(
    padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 15.0),
    child: Container(
      height: 140.0,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
            width: 140.0,
            height: 150.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover
              )
            ),
          ),
          SizedBox(
            width: 4.0
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    width: 45.0
                  ),
                  Material(
                    elevation: isLoved ? 0.0 : 2.0,//if that is favourite one then elevation is 0.0 else elevation is 2.0
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        color: isLoved ? Colors.grey.withOpacity(0.3):Colors.white
                      ),
                      child: isLoved ? Icon(Icons.favorite_border):Icon(Icons.favorite,color: Colors.red),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5.0
              ),
              Container(
                width: 170.0,
                child: Text(
                  'This is special deal',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13.0
                  ),
                ),
              ),
              SizedBox(
                height: 5.0
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 35.0
                  ),
                  Container( //for show the price
                    height: 44.0,
                    width: 50.0,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        '\$300',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Container( //for show the 'Add to cart' button
                    height: 44.0,
                    width: 100.0,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
  }


