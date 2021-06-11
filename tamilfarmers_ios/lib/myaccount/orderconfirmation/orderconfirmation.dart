import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:tamilfarmers_ios/category/category.dart';
import 'package:tamilfarmers_ios/checkout/checkoutmain.dart';
import 'package:tamilfarmers_ios/homepagemain.dart';
import 'package:tamilfarmers_ios/myaccount/trackorder.dart';

class orderconfirmation extends StatefulWidget {
  @override
  _orderconfirmationState createState() => _orderconfirmationState();
}

class _orderconfirmationState extends State<orderconfirmation> with SingleTickerProviderStateMixin{
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
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
              child: Image.asset('assets/image/carticon.png',height: 250.0),
            ),
          ),


          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
              child: new Text(
                'Your Order has been accepted',
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
              child: new Text(
                'Your items has been placed and is on it\'s way to being processed',
                style: new TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.left,
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
                      onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>trackorder()));},
                      child: Text("Track Your Order!",style: TextStyle(color: Colors.white),),
                      color: Colors.green,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:5.0,right:5.0),
                    child: Expanded(
                      child: RaisedButton(
                        child: Text("Go Back to Home",style: TextStyle(color: Colors.white),),
                        color: Colors.green,
                        onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>HomepageMain()));},
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