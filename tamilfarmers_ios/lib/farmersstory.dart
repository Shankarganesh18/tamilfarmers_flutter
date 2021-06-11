import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:tamilfarmers_ios/category/category.dart';
import 'package:tamilfarmers_ios/checkout/checkoutmain.dart';

class farmersstory extends StatefulWidget {
  @override
  _farmersstoryState createState() => _farmersstoryState();
}

class _farmersstoryState extends State<farmersstory> with SingleTickerProviderStateMixin{
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
    double screenHeight = MediaQuery.of(context).size.height;

    Widget carousel = new Carousel(
      boxFit: BoxFit.cover,
      images: [
        new AssetImage('assets/image/offerimg.jpg'),
        new AssetImage('assets/image/offerimg.jpg'),
        new AssetImage('assets/image/offerimg.jpg'),
      ],
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(seconds: 1),
    );

    Widget banner = new Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
      child: new Container(
        decoration: BoxDecoration(

        ),
        padding: const EdgeInsets.all(10.0),

      ),
      // ),
      //  ),
    );
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body:
      new ListView(
        children: <Widget>[

          Padding(padding: EdgeInsets.only(top: 10.0),),


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
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0),
              child: Container(
                height: screenHeight / 5,
                child: new ClipRRect(
                  child: new Stack(
                    children: [
                      carousel,
                      banner,
                    ],
                  ),
                ),
              ),
            ),
          ),

          Padding(padding: EdgeInsets.only(top: 10.0),),

          Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Text(
              "Shop by Brands",
              style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),
            ),
          ),

          Padding(padding: EdgeInsets.only(top: 10.0),),

          Padding(
            padding: const EdgeInsets.only(left: 10.0,right:12.0),
            child: SizedBox(
              width: double.infinity,
              height: 150,
              child: GridView(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 1,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1
                ),
                children: [
                  new Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        side: BorderSide(width: 1, color: Color(0xFFDBD7D7))),
                    child: Image.asset('assets/image/prologo.png',height: 10.0),
                  ),

                  new Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        side: BorderSide(width: 1, color: Color(0xFFDBD7D7))),
                    child: Image.asset('assets/image/nagalogo.jpg',height: 10.0),
                  ),

                  new Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        side: BorderSide(width: 1, color: Color(0xFFDBD7D7))),
                    child: Image.asset('assets/image/tatalogo.jpeg',height: 10.0),
                  ),

                  new Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        side: BorderSide(width: 1, color: Color(0xFFDBD7D7))),
                    child: Image.asset('assets/image/sakthimasalalogo.jpeg',height: 10.0),
                  ),

                  new Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        side: BorderSide(width: 1, color: Color(0xFFDBD7D7))),
                    child: Image.asset('assets/image/britannialogo.jpg',height: 10.0),
                  ),

                ],
              ),
            ),
          ),

          Padding(padding: EdgeInsets.only(top: 10.0),),

          Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Text(
              "Recently Viewed",
              style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),
            ),
          ),

          Padding(padding: EdgeInsets.only(top: 10.0),),

          Padding(
            padding: const EdgeInsets.only(left: 10.0,right:12.0),
            child: SizedBox(
              width: double.infinity,
              height: 150,

              child: GridView(
                scrollDirection: Axis.horizontal,

                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,

                ),
                children: [
                  new Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        side: BorderSide(width: 1, color: Color(0xFFDBD7D7))),
                    child: new Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          child: new InkWell(onTap:() {Navigator.push(context,MaterialPageRoute(builder: (context)=>Category()));}),
                          width: 40.0,
                          height: 40.0,
                          margin: const EdgeInsets.all(10.0),
                          decoration: new BoxDecoration(
                              image: new DecorationImage(image: AssetImage('assets/image/home1.jpg'))
                          ),
                        ),
                        new Text("Medimix Santoor",style: new TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: Colors.green)),

                        Padding(
                          padding: const EdgeInsets.only(left: 27.0,right: 10.0),
                          child: Row(
                            children: <Widget>[
                              new RichText(
                                text: new TextSpan(
                                  children: <TextSpan>[
                                    new TextSpan(
                                      text: '\Rs. 50',
                                      style: new TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                    new TextSpan(
                                      text: ' \Rs. 50',
                                      style: new TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                              Expanded(child: Image.asset('assets/image/addbutton.jpg',height: 30.0),)],),
                        ),


                        new Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                        ),
                      ],
                    ),
                  ),
                  new Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        side: BorderSide(width: 1, color: Color(0xFFDBD7D7))),
                    child: new Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          child: new InkWell(onTap:() {Navigator.push(context,MaterialPageRoute(builder: (context)=>Category()));}),
                          width: 40.0,
                          height: 40.0,
                          margin: const EdgeInsets.all(10.0),
                          decoration: new BoxDecoration(
                              image: new DecorationImage(image: AssetImage('assets/image/home2.jpg'))
                          ),
                        ),
                        new Text("Mugi Bathroom",style: new TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: Colors.green)),

                        Padding(
                          padding: const EdgeInsets.only(left: 27.0,right: 10.0),
                          child: Row(
                            children: <Widget>[
                              new RichText(
                                text: new TextSpan(
                                  children: <TextSpan>[
                                    new TextSpan(
                                      text: '\Rs. 50',
                                      style: new TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                    new TextSpan(
                                      text: ' \Rs. 50',
                                      style: new TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                              Expanded(child: Image.asset('assets/image/addbutton.jpg',height: 30.0),)],),
                        ),


                        new Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                        ),
                      ],
                    ),
                  ),
                  new Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        side: BorderSide(width: 1, color: Color(0xFFDBD7D7))),
                    child: new Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          child: new InkWell(onTap:() {Navigator.push(context,MaterialPageRoute(builder: (context)=>Category()));}),
                          width: 40.0,
                          height: 40.0,
                          margin: const EdgeInsets.all(10.0),
                          decoration: new BoxDecoration(
                              image: new DecorationImage(image: AssetImage('assets/image/home3.jpg'))
                          ),
                        ),
                        new Text("Ponvandu",style: new TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: Colors.green)),

                        Padding(
                          padding: const EdgeInsets.only(left: 27.0,right: 10.0),
                          child: Row(
                            children: <Widget>[
                              new RichText(
                                text: new TextSpan(
                                  children: <TextSpan>[
                                    new TextSpan(
                                      text: '\Rs. 50',
                                      style: new TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                    new TextSpan(
                                      text: ' \Rs. 50',
                                      style: new TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                              Expanded(child: Image.asset('assets/image/addbutton.jpg',height: 30.0),)],),
                        ),


                        new Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                        ),
                      ],
                    ),
                  ),
                  new Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        side: BorderSide(width: 1, color: Color(0xFFDBD7D7))),
                    child: new Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          child: new InkWell(onTap:() {Navigator.push(context,MaterialPageRoute(builder: (context)=>Category()));}),
                          width: 40.0,
                          height: 40.0,
                          margin: const EdgeInsets.all(10.0),
                          decoration: new BoxDecoration(
                              image: new DecorationImage(image: AssetImage('assets/image/home4.jpg'))
                          ),
                        ),
                        new Text("Hamam",style: new TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: Colors.green)),

                        Padding(
                          padding: const EdgeInsets.only(left: 27.0,right: 10.0),
                          child: Row(
                            children: <Widget>[
                              new RichText(
                                text: new TextSpan(
                                  children: <TextSpan>[
                                    new TextSpan(
                                      text: '\Rs. 50',
                                      style: new TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                    new TextSpan(
                                      text: ' \Rs. 50',
                                      style: new TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                              Expanded(child: Image.asset('assets/image/addbutton.jpg',height: 30.0),)],),
                        ),


                        new Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                        ),
                      ],
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