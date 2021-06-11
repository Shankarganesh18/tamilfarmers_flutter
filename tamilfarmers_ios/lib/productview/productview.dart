import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class ProductView extends StatefulWidget {
  @override
  _ProductViewState createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> with SingleTickerProviderStateMixin{
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
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Image.asset('assets/image/bottom.jpg'),
        elevation: 0,
      ),
      body:
      new ListView(
        children: <Widget>[

          Padding(padding: EdgeInsets.only(top: 10.0),),

          new Column(
              mainAxisSize: MainAxisSize.min,

              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: <Widget>[
                      Image.asset('assets/image/deliver.jpg',height: 30.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Expanded(
                          child:Image.asset('assets/image/offerper.jpg',height: 20.0),),),
                    ],
                  ),
                ),
                new Container(
                  child: new InkWell(onTap:() {Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductView()));}),

                  width: 180.0,
                  height: 180.0,
                  margin: const EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                      image: new DecorationImage(image: AssetImage('assets/image/redcapsicum.jpg'))
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                    child:Row(
                      children: <Widget>[
                        new Text(
                          'Red Capsicum',
                          style: new TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Expanded(
                            child: new Text(
                              "TF Assured",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.green),
                            ),),),
                      ],
                    ),

                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                    child: new RichText(
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
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 10.0),
                  child: Row(
                    children: <Widget>[

                      Text(
                        "59 Rating",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
                      ),

                    ],
                  ),
                ),

                new Divider(
                  color: Colors.grey,
                ),

                // Image.asset('assets/image/add.jpg',height: 30.0),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                    child: new Text(
                      'Description',
                      style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                    child: new Text(
                      'Red capsicum is member of the plants named scientifically as Capsicum annuum like green capsicum, yellow capsicum.',
                      style: new TextStyle(
                          fontSize: 12.0,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                    child: new Divider(
                      color: Colors.grey,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                    child: new Text(
                      'Benefits',
                      style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                    child: new Text(
                      'Red capsicum is member of the plants named scientifically as Capsicum annuum like green capsicum, yellow capsicum.',
                      style: new TextStyle(
                          fontSize: 12.0,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                    child: new Divider(
                      color: Colors.grey,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                    child: new Text(
                      'Product Information',
                      style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                    child: new Text(
                      'Red capsicum is member of the plants named scientifically as Capsicum annuum like green capsicum, yellow capsicum.',
                      style: new TextStyle(
                          fontSize: 12.0,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                    child: new Divider(
                      color: Colors.grey,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                    child: new Text(
                      'Disclaimer',
                      style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                    child: new Text(
                      'Red capsicum is member of the plants named scientifically as Capsicum annuum like green capsicum, yellow capsicum.',
                      style: new TextStyle(
                          fontSize: 12.0,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top:10.0),
                    child: new Divider(
                      color: Colors.grey,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                    child: new Text(
                      'Ratings and Reviews',
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
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: '4.7',
                              ),
                              WidgetSpan(
                                child: Icon(Icons.star,color: Colors.green),
                              ),
                              TextSpan(
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                ),
                                text: '56 ratings and 3,280 reviews',
                              )
                            ],
                          ),
                        )
                          ),
                    ),



                Padding(
                  padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                  child: Row(
                    children: <Widget>[

                    Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Expanded(
                          child: Text(
                            "Perfect Product!",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
                          ),),),
                    ],
                  ),
                ),

                Container(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                    child: new Text(
                      'Red capsicum is member of the plants named scientifically as Capsicum annuum like green capsicum, yellow capsicum.',
                      style: new TextStyle(
                          fontSize: 12.0,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.person,color: Colors.grey),

                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          "User 1",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),),

                    ],
                  ),
                ),

                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                    child: new Divider(
                      color: Colors.grey,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                  child: Row(
                    children: <Widget>[


                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Expanded(
                          child: Text(
                            "Classy Product",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),
                          ),),),
                    ],
                  ),
                ),

                Container(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                    child: new Text(
                      'Red capsicum is member of the plants named scientifically as Capsicum annuum like green capsicum, yellow capsicum.',
                      style: new TextStyle(
                          fontSize: 12.0,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.person,color: Colors.grey),

                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          "User 2",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),),

                    ],
                  ),
                ),

                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top:10.0),
                    child: new Divider(
                      color: Colors.grey,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
                    child: new Text(
                      'Similar Products',
                      style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10.0,right:12.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 180,

                    child: GridView(
                      scrollDirection: Axis.horizontal,

                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,

                      ),
                      children: [
                        new Card(
                          child:
                          new Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new Container(
                                child: new InkWell(onTap:() {Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductView()));}),
                                width: 40.0,
                                height: 40.0,
                                margin: const EdgeInsets.all(10.0),
                                decoration: new BoxDecoration(
                                    image: new DecorationImage(image: AssetImage('assets/image/organicpopular.jpg'))
                                ),
                              ),
                              new Text("Ajwain",style: new TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: Colors.green)),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                child: Image.asset('assets/image/dropdown.jpg',height: 30.0),),

                              Padding(
                                padding: const EdgeInsets.only(left: 37.0,right: 10.0),
                                child: Row(
                                  children: <Widget>[

                                    Text(
                                      "59 Rating",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 10),
                                    ),
                                    Expanded(
                                      child:Image.asset('assets/image/rating.jpg',height: 20.0),)
                                  ],
                                ),
                              ),



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
                          child:
                          new Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new Container(
                                child: new InkWell(onTap:() {Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductView()));}),
                                width: 40.0,
                                height: 40.0,
                                margin: const EdgeInsets.all(10.0),
                                decoration: new BoxDecoration(
                                    image: new DecorationImage(image: AssetImage('assets/image/organic2.jpg'))
                                ),
                              ),
                              new Text("Almonds",style: new TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: Colors.green)),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                child: Image.asset('assets/image/dropdown.jpg',height: 30.0),),

                              Padding(
                                padding: const EdgeInsets.only(left: 37.0,right: 10.0),
                                child: Row(
                                  children: <Widget>[

                                    Text(
                                      "59 Rating",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 10),
                                    ),
                                    Expanded(
                                      child:Image.asset('assets/image/rating.jpg',height: 20.0),)
                                  ],
                                ),
                              ),



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
                          child:
                          new Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new Container(
                                child: new InkWell(onTap:() {Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductView()));}),
                                width: 40.0,
                                height: 40.0,
                                margin: const EdgeInsets.all(10.0),
                                decoration: new BoxDecoration(
                                    image: new DecorationImage(image: AssetImage('assets/image/organic3.jpg'))
                                ),
                              ),
                              new Text("Atta Whole",style: new TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: Colors.green)),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                child: Image.asset('assets/image/dropdown.jpg',height: 30.0),),

                              Padding(
                                padding: const EdgeInsets.only(left: 37.0,right: 10.0),
                                child: Row(
                                  children: <Widget>[

                                    Text(
                                      "59 Rating",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 10),
                                    ),
                                    Expanded(
                                      child:Image.asset('assets/image/rating.jpg',height: 20.0),)
                                  ],
                                ),
                              ),



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
                          child:
                          new Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new Container(
                                child: new InkWell(onTap:() {Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductView()));}),
                                width: 40.0,
                                height: 40.0,
                                margin: const EdgeInsets.all(10.0),
                                decoration: new BoxDecoration(
                                    image: new DecorationImage(image: AssetImage('assets/image/organic4.jpg'))
                                ),
                              ),
                              new Text("Beaten Rice",style: new TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: Colors.green)),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                child: Image.asset('assets/image/dropdown.jpg',height: 30.0),),

                              Padding(
                                padding: const EdgeInsets.only(left: 37.0,right: 10.0),
                                child: Row(
                                  children: <Widget>[

                                    Text(
                                      "59 Rating",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontWeight: FontWeight.normal,fontSize: 10),
                                    ),
                                    Expanded(
                                      child:Image.asset('assets/image/rating.jpg',height: 20.0),)
                                  ],
                                ),
                              ),



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
              ],
            ),

          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
              child: new Text(
                'Farmer\'s Story',
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
              child: Image.asset('assets/image/farmers2.jpg'),
            ),
          ),

          Container(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
              child: new Text(
                'A farmer (also called an agriculturer) is a person engaged in agriculture, raising living organisms for food or raw materials. The term usually applies to people who do some combination of raising field crops, orchards, vineyards, poultry, or other livestock.',
                style: new TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.justify,
              ),
            ),
          ),

          Container(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
              child: new Text(
                'Farmers are responsible for all crops and livestock that are needed for us to survive. Without food, the world would slowly die, and farmers work hard every day to keep plenty of crops and animal products in the market to keep that from happening.',
                style: new TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.justify,
              ),
            ),
          ),

          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
              child: new Text(
                'Offers',
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
              child: Image.asset('assets/image/offercard.jpg'),
            ),
          ),

          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
              child: new Text(
                'Shop by Brands',
                style: new TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
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
                    child: Image.asset('assets/image/prologo.png',height: 10.0),
                  ),

                  new Card(
                    child: Image.asset('assets/image/nagalogo.jpg',height: 10.0),
                  ),

                  new Card(
                    child: Image.asset('assets/image/tatalogo.jpeg',height: 10.0),
                  ),
                  new Card(
                    child: Image.asset('assets/image/sakthimasalalogo.jpeg',height: 10.0),
                  ),

                  new Card(
                    child: Image.asset('assets/image/britannialogo.jpg',height: 10.0),
                  ),

                ],
              ),
            ),
          ),

          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0,top:10.0),
              child: new Text(
                'Frequently Bought Together',
                style: new TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
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
                    child:
                    new Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          child: new InkWell(onTap:() {Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductView()));}),
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
                    child:
                    new Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          child: new InkWell(onTap:() {Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductView()));}),
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
                    child:
                    new Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          child: new InkWell(onTap:() {Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductView()));}),
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
                    child:
                    new Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          child: new InkWell(onTap:() {Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductView()));}),
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

        ],
      ),
    );
  }
  dispose() {
    controller.dispose();
    super.dispose();
  }
}