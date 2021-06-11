import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:tamilfarmers_ios/category/category.dart';
import 'package:tamilfarmers_ios/myaccount/orderconfirmation/orderconfirmation.dart';

class payment extends StatefulWidget {
  @override
  _paymentState createState() => _paymentState();
}

class _paymentState extends State<payment> with SingleTickerProviderStateMixin{
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
              padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
              child: new Text(
                'Payment Method',
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
              padding: const EdgeInsets.only(left:15.0,right:15.0,top:20.0),
              child: new Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>orderconfirmation()));},
                      child: Text("Proceed",style: TextStyle(color: Colors.white),),
                      color: Colors.green,
                    ),
                  ),

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