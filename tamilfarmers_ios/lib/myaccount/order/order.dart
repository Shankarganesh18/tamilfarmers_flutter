import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:tamilfarmers_ios/allproductmain.dart';
import 'package:tamilfarmers_ios/category/category.dart';
import 'package:tamilfarmers_ios/checkout/checkoutmain.dart';
import 'package:tamilfarmers_ios/myaccount/trackorder.dart';

class order extends StatefulWidget {
  @override
  _orderState createState() => _orderState();
}

class _orderState extends State<order> with SingleTickerProviderStateMixin{
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

          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0,top:20.0),
              child: new Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>AllproductMain()));},
                      child: Text("Write a review",style: TextStyle(color: Colors.white),),
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:5.0,right:5.0),
                    child: Expanded(
                      child: RaisedButton(
                        child: Text("Track Order",style: TextStyle(color: Colors.white),),
                        color: Colors.green,
                        onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>trackorder()));},
                      ),
                    ),),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0,top:7.0),
              child: new Divider(color: Colors.grey,),
            ),
          ),
        ],
      ),
    );
  }
  dispose() {
    controller.dispose();
    super.dispose();
  }
}