import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:tamilfarmers_ios/category/category.dart';
import 'package:tamilfarmers_ios/checkout/checkoutmain.dart';

class termsconditions extends StatefulWidget {
  @override
  _termsconditionsState createState() => _termsconditionsState();
}

class _termsconditionsState extends State<termsconditions> with SingleTickerProviderStateMixin{
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

        ],
      ),
    );
  }
  dispose() {
    controller.dispose();
    super.dispose();
  }
}