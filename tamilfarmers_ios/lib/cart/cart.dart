import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:tamilfarmers_ios/allproduct.dart';
import 'package:tamilfarmers_ios/category/category.dart';
import 'package:tamilfarmers_ios/checkout/checkoutmain.dart';
import 'package:tamilfarmers_ios/allproductmain.dart';

class cart extends StatefulWidget {
  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> with SingleTickerProviderStateMixin{
  bool _isInternet = true;//Internet

  Animation<double> animation;
  AnimationController controller;

  initState() {
    super.initState();

    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = new Tween(begin: 0.0, end: 18.0).animate(controller)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
    controller.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body:
      new ListView(
        children: <Widget>[

          Padding(padding: EdgeInsets.only(top: 10.0),),

          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
              child: Image.asset('assets/image/search.jpg'),
            ),
          ),



          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 40.0,
            child: ListView(
              scrollDirection: Axis.horizontal, // <-- Like so
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0),
                    child: RaisedButton(
                      onPressed: () {print('Button Clicked');},
                      child: Text('All'),
                      color: Colors.green,
                      textColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          side: BorderSide(width: 1, color: Colors.green)),
                      padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0),
                    child: RaisedButton(
                      onPressed: () {print('Button Clicked');},
                      child: Text('Vegetables'),
                      color: Colors.white,
                      textColor: Colors.black,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          side: BorderSide(width: 1, color: Color(0xFFDBD7D7))),
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0),
                    child: RaisedButton(
                      onPressed: () {print('Button Clicked');},
                      child: Text('Fruits'),
                      color: Colors.white,
                      textColor: Colors.black,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          side: BorderSide(width: 1, color: Color(0xFFDBD7D7))),
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0),
                    child: RaisedButton(
                      onPressed: () {print('Button Clicked');},
                      child: Text('Grocery'),
                      color: Colors.white,
                      textColor: Colors.black,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          side: BorderSide(width: 1, color: Color(0xFFDBD7D7))),
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
              child: new Text(
                'Order Summary',
                style: new TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
          ),

          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
              child: Image.asset('assets/image/cartlist.jpg'),
            ),
          ),

          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0,top:20.0),
              child: new Row(
                children: <Widget>[
                  Expanded(
                    child: new Text(
                      'Total Amount',
                      style: new TextStyle(
                          fontSize: 17.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:5.0,right:5.0),
                    child: Expanded(
                      child: new Text(
                        'Rs. 150',
                        style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),),
                ],
              ),
            ),
          ),

          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0,top:20.0),
              child: new Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>AllproductMain()));},
                      child: Text("Keep Shopping",style: TextStyle(color: Colors.white),),
                      color: Colors.green,
                    ),
                  ),
                  Padding(
                  padding: const EdgeInsets.only(left:5.0,right:5.0),
                  child: Expanded(
                    child: RaisedButton(
                      child: Text("Make Payment",style: TextStyle(color: Colors.white),),
                      color: Colors.green,
                      onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>CheckoutMain()));},
                    ),
                  ),),
                ],
              ),
            ),
          ),


          Padding(padding: EdgeInsets.only(top: 10.0),),

        ],
      ),
    );
  }
  dispose() {
    controller.dispose();
    super.dispose();
  }
}