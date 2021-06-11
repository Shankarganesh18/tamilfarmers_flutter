import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:tamilfarmers_ios/category/category.dart';
import 'package:tamilfarmers_ios/checkout/payment.dart';
import 'package:tamilfarmers_ios/checkout/paymentmain.dart';

class mypayments extends StatefulWidget {
  @override
  _mypaymentsState createState() => _mypaymentsState();
}

class _mypaymentsState extends State<mypayments> with SingleTickerProviderStateMixin{
  bool _isInternet = true;//Internet

  Animation<double> animation;
  AnimationController controller;
  bool viewVisible = false ;

  void showWidget(){
    setState(() {
      viewVisible = true ;
    });
  }
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
              padding: const EdgeInsets.only(top:10.0),
              child: Image.asset('assets/image/creditcard.jpg'),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
              child: new Text(
                'Saved Cards',
                style: new TextStyle(
                    fontSize: 12.0,
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
              child: new Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: showWidget,
                      child: Text("ADD NEW CARD",style: TextStyle(color: Colors.white),),
                      color: Colors.green,
                    ),
                  ),

                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
              child: new Divider(color: Colors.grey,),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: Image.asset('assets/image/walletupi.jpg'),
            ),
          ),
          Visibility(
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              visible: viewVisible,
              child: Container(
                height: 600,
                width: 200,
                color: Colors.white,
                margin: EdgeInsets.only(top: 10, bottom: 30),
                child: new Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: const EdgeInsets.only(top:10.0,left:15.0,right:15.0),
                          child: new TextField(
                            decoration: new InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                              ),
                              border: const OutlineInputBorder(),
                              hintText: 'Card Number',
                              labelStyle: new TextStyle(color: Colors.green),
                            ),
                          )
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: const EdgeInsets.only(top:10.0,left:15.0,right:15.0),
                          child: new TextField(
                            decoration: new InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                              ),
                              border: const OutlineInputBorder(),
                              hintText: 'MM/YY',
                              labelStyle: new TextStyle(color: Colors.green),
                            ),
                          )
                      ),
                    ),

                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: const EdgeInsets.only(top:10.0,left:15.0,right:15.0),
                          child: new TextField(
                            decoration: new InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                              ),
                              border: const OutlineInputBorder(),
                              hintText: 'CVV',
                              labelStyle: new TextStyle(color: Colors.green),
                            ),
                          )
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
                                onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>PaymentMain()));},
                                child: Text("SAVE",style: TextStyle(color: Colors.white),),
                                color: Colors.green,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
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