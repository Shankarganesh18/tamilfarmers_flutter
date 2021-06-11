import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:tamilfarmers_ios/category/category.dart';
import 'package:tamilfarmers_ios/checkout/payment.dart';
import 'package:tamilfarmers_ios/checkout/paymentmain.dart';
import 'package:tamilfarmers_ios/contactus.dart';
import 'package:tamilfarmers_ios/myaccount/myaddress/myaddressmain.dart';
import 'package:tamilfarmers_ios/myaccount/mypayments/mypaymentsmain.dart';
import 'package:tamilfarmers_ios/myaccount/myratingreview/myratingreviewmain.dart';
import 'package:tamilfarmers_ios/myaccount/mywishlist/mywishlistmain.dart';
import 'package:tamilfarmers_ios/myaccount/notifications/notificationsmain.dart';
import 'package:tamilfarmers_ios/myaccount/order/ordermain.dart';
import 'package:tamilfarmers_ios/myaccount/termsconditions/termsconditionsmain.dart';

class myaccount extends StatefulWidget {
  @override
  _myaccountState createState() => _myaccountState();
}

class _myaccountState extends State<myaccount> with SingleTickerProviderStateMixin{
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
              child: Image.asset('assets/image/profile.png',height: 140),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>OrderMain()));
            },
            child: Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left:15.0,right:15.0,top:20.0),
                child: Row(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.open_in_browser,color: Colors.green,)
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: new Text(
                          'My Orders',
                          style: new TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
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

          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>MywishlistMain()));
            },
            child: Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                child: Row(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.favorite_outlined,color: Colors.red,)
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: new Text(
                          'My Wishlist',
                          style: new TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
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
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>MyratingreviewMain()));
            },
            child: Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                child: Row(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.star,color: Colors.red,)
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: new Text(
                          'My Ratings and Reviews',
                          style: new TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
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
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>MyaddressMain()));
            },
            child: Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                child: Row(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.home,color: Colors.green,)
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: new Text(
                          'Delivery Address',
                          style: new TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
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
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>MypaymentsMain()));
            },
            child: Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                child: Row(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.credit_card_sharp,color: Colors.green,)
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: new Text(
                          'Cards and Wallets',
                          style: new TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
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
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>NotificationsMain()));
            },
            child: Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                child: Row(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.notifications_active,color: Colors.green,)
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: new Text(
                          'My Notifications',
                          style: new TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
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
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>contactus()));
            },
            child: Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                child: Row(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.location_pin,color: Colors.green,)
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: new Text(
                          'Contact us',
                          style: new TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
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
              child: Image.asset('assets/image/language.jpg'),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0,top:7.0),
              child: new Divider(color: Colors.grey,),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>TermsconditionsMain()));
            },
            child: Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                child: new Text(
                  'Terms and Conditions',
                  style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
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
                      onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>PaymentMain()));},
                      child: Text("Logout",style: TextStyle(color: Colors.white),),
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