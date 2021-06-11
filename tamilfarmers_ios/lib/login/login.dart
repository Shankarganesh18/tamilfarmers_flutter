import 'package:flutter/material.dart';
import 'package:tamilfarmers_ios/combooffermain.dart';
import 'package:tamilfarmers_ios/farmersstorymain.dart';
import 'package:tamilfarmers_ios/homepagemain.dart';
import 'package:tamilfarmers_ios/contactus.dart';
import 'package:tamilfarmers_ios/myaccount/myaccount.dart';

class LoginMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xffffffff),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(bottom:10.0),
            child: new Text(
              'Terms and Conditions',
              style: new TextStyle(
                  fontSize: 13.0,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        elevation: 0,
      ),
      appBar: null,
      body: new ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top:60.0),
              child: Image.asset('assets/image/tamilfarmerslogo.png'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top:20.0,bottom: 10.0),
              child: new Text(
                'உணவூட்டும் விவசாயத்திற்கு உயிரூட்டுவோம்',
                style: new TextStyle(
                    fontSize: 10.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          new Container(
            decoration: new BoxDecoration(color: Colors.white),
            child: new TabBar(
              controller: _controller,
              unselectedLabelColor: Colors.lightGreen[100],
              labelColor: Colors.green,
              indicatorColor: Colors.green,
              tabs: [
                new Tab(
                  text: 'LOGIN',

                ),
                new Tab(
                  text: 'SIGN UP',
                ),
              ],
            ),
          ),
          new Container(
            height: 280.0,
            child: new TabBarView(
              controller: _controller,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:20.0,left:15.0,right:15.0),
                  child: new ListTile(
                    title: Column(
                      children: <Widget>[
                        new TextField(
                          decoration: new InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                            ),
                            border: const OutlineInputBorder(),
                            hintText: 'Mobile Number (10-digit)',
                            labelStyle: new TextStyle(color: Colors.green),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Expanded(
                            child: new RaisedButton(
                              color: Colors.redAccent,
                              onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>HomepageMain()));},
                              child: const Text(
                                'Login Using OTP',
                                textAlign: TextAlign.left,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),),),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 10.0),
                        //   child: Expanded(
                        //     child: new Text(
                        //       'Forgot Password?',
                        //       style: new TextStyle(
                        //           fontSize: 13.0,
                        //           color: Colors.green,
                        //           fontWeight: FontWeight.bold),
                        //       textAlign: TextAlign.left,
                        //     ),),),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top:20.0,left:15.0,right:15.0),
                  child: new ListTile(
                    title: Column(
                      children: <Widget>[
                        new TextField(
                          decoration: new InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                            ),
                            border: const OutlineInputBorder(),
                            hintText: 'Mobile Number (10-digit)',
                            labelStyle: new TextStyle(color: Colors.green),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Expanded(
                            child: new RaisedButton(
                              color: Colors.redAccent,
                              onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>myaccount()));},
                              child: const Text(
                                'Sign up Using OTP',
                                textAlign: TextAlign.left,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),



        ],
      ),
    );
  }
}