import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tamilfarmers_ios/cart/cartmain.dart';
import 'package:tamilfarmers_ios/category/categorymain.dart';
import 'package:tamilfarmers_ios/login/login.dart';
import 'package:tamilfarmers_ios/myaccount/customer_support/helpcentremain.dart';
import 'package:tamilfarmers_ios/myaccount/myaddress/myaddress.dart';
import 'package:tamilfarmers_ios/myaccount/myaddress/myaddressmain.dart';
import 'package:tamilfarmers_ios/myaccount/mypayments/mypaymentsmain.dart';
import 'package:tamilfarmers_ios/myaccount/myprofile/myprofilemain.dart';
import 'package:tamilfarmers_ios/myaccount/myratingreview/myratingreviewmain.dart';
import 'package:tamilfarmers_ios/myaccount/mywishlist/mywishlistmain.dart';
import 'package:tamilfarmers_ios/homepage.dart';
import 'package:tamilfarmers_ios/myaccount/order/ordermain.dart';
import 'package:tamilfarmers_ios/myaccount/termsconditions/termsconditionsmain.dart';
import 'customappbar.dart';
import 'custombottombar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreenPage(),
    );
  }
}

// First screen --- Splash Screen Page
class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return LoginMain();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Center(
        child: Image.asset(
          "assets/image/tamilfarmerslogo.png",
          width: 200.0,
          height: 100.0,
        ),
      ),
    );
  }
}