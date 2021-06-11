import 'package:flutter/material.dart';
import 'package:tamilfarmers_ios/cart/cartmain.dart';
import 'package:tamilfarmers_ios/category/categorymain.dart';
import 'package:tamilfarmers_ios/combooffermain.dart';
import 'package:tamilfarmers_ios/contactus.dart';
import 'package:tamilfarmers_ios/login/login.dart';
import 'package:tamilfarmers_ios/myaccount/customer_support/helpcentremain.dart';
import 'package:tamilfarmers_ios/myaccount/myaccount.dart';
import 'package:tamilfarmers_ios/myaccount/myaddress/myaddress.dart';
import 'package:tamilfarmers_ios/myaccount/myaddress/myaddressmain.dart';
import 'package:tamilfarmers_ios/myaccount/mypayments/mypaymentsmain.dart';
import 'package:tamilfarmers_ios/myaccount/myprofile/myprofilemain.dart';
import 'package:tamilfarmers_ios/myaccount/myratingreview/myratingreviewmain.dart';
import 'package:tamilfarmers_ios/myaccount/mywishlist/mywishlistmain.dart';
import 'package:tamilfarmers_ios/homepage.dart';
import 'package:tamilfarmers_ios/myaccount/notifications/notificationsmain.dart';
import 'package:tamilfarmers_ios/myaccount/order/ordermain.dart';
import 'package:tamilfarmers_ios/myaccount/termsconditions/termsconditionsmain.dart';
import 'package:tamilfarmers_ios/todaydealsmain.dart';
import 'package:tamilfarmers_ios/offers/offersmain.dart';
import 'customappbar.dart';
import 'custombottombar.dart';


class HomepageMain extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    final mqHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Chennai\nCBI Colony",style: new TextStyle(color: Colors.black,fontSize: 12),),
        leading: IconButton(
          icon: Icon(Icons.menu,color: Colors.green,),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.all(5.0),
            icon: Image.asset('assets/image/carticon.png'),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>CartMain()));
            },
          ),
          IconButton(
            padding: EdgeInsets.all(5.0),
            icon: Icon(Icons.notifications_active),
            // onPressed: () => Navigator.pop(context),
            color: Colors.green,
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>NotificationsMain()));
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text("ganesh@gmail.com",style: TextStyle(color: Colors.green),),
              accountName: Text("Ganesh",style: TextStyle(color: Colors.green),),
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
              ),
              currentAccountPicture: CircleAvatar(
                child: Image.asset('assets/image/profile.png'),
                backgroundColor: const Color(0xFFFFFFFF),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.green),
              title: Text("Home",style: TextStyle(color: Colors.green),),
              onTap: (){},
            ),
            new Divider(color: Colors.grey,),
            ListTile(
              title: Text("Shop by Categories",style: TextStyle(color: Colors.grey),),
              onTap: (){},
            ),
            ListTile(
              leading: Image.asset('assets/image/vegetable.png',height:25.0),
              title: Text("Vegetables",style: TextStyle(color: Colors.green),),
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>CategoryMain()));},
            ),
            ListTile(
              leading: Image.asset('assets/image/fruits.png',height:25.0),
              title: Text("Fruits",style: TextStyle(color: Colors.green),),
              onTap: (){},
            ),
            ListTile(
              leading: Image.asset('assets/image/grocery.png',height:25.0),
              title: Text("Groceries",style: TextStyle(color: Colors.green),),
              onTap: (){},
            ),
            ListTile(
              leading: Image.asset('assets/image/organic.png',height:25.0),
              title: Text("Organic Products",style: TextStyle(color: Colors.green),),
              onTap: (){},
            ),
            ListTile(
              leading: Image.asset('assets/image/kitchenicon.jpg',height:25.0),
              title: Text("Home & Kitchen",style: TextStyle(color: Colors.green),),
              onTap: (){},
            ),
            new Divider(color: Colors.grey,),
            ListTile(
              title: Text("All Offers",style: TextStyle(color: Colors.grey),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.local_offer_sharp,color: Colors.green),
              title: Text("Today Deals",style: TextStyle(color: Colors.green),),
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>TodaydealsMain()));},
            ),
            ListTile(
              leading: Icon(Icons.local_offer_sharp,color: Colors.green),
              title: Text("Offers",style: TextStyle(color: Colors.green),),
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>OffersMain()));},
            ),
            ListTile(
              leading: Icon(Icons.local_offer_sharp,color: Colors.green),
              title: Text("Combo Offers",style: TextStyle(color: Colors.green),),
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>ComboofferMain()));},
            ),
            ListTile(
              leading: Icon(Icons.local_offer_sharp,color: Colors.green),
              title: Text("Jumbo Offers",style: TextStyle(color: Colors.green),),
            ),
            new Divider(color: Colors.grey,),
            ListTile(
              title: Text("My Account",style: TextStyle(color: Colors.grey),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.person,color: Colors.green),
              title: Text("My Profile",style: TextStyle(color: Colors.green),),
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>MyprofileMain()));},
            ),
            ListTile(
              leading: Icon(Icons.open_in_browser,color: Colors.green),
              title: Text("My Orders",style: TextStyle(color: Colors.green),),
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>OrderMain()));},
            ),
            ListTile(
              leading: Icon(Icons.favorite_outlined,color: Colors.red),
              title: Text("My Wishlist",style: TextStyle(color: Colors.green),),
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>MywishlistMain()));},
            ),
            ListTile(
              leading: Icon(Icons.star,color: Colors.red),
              title: Text("My Ratings and Reviews",style: TextStyle(color: Colors.green),),
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>MyratingreviewMain()));},
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.green),
              title: Text("My Address",style: TextStyle(color: Colors.green),),
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>MyaddressMain()));},
            ),
            ListTile(
              leading: Icon(Icons.credit_card_outlined,color: Colors.green),
              title: Text("Cards and Wallets",style: TextStyle(color: Colors.green),),
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>MypaymentsMain()));},
            ),
            ListTile(
              leading: Icon(Icons.notifications_active,color: Colors.green),
              title: Text("My Notifications",style: TextStyle(color: Colors.green),),
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>NotificationsMain()));},
            ),
            new Divider(color: Colors.grey,),
            ListTile(
              title: Text("Help Centre",style: TextStyle(color: Colors.green),),
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>HelpcentreMain()));},
            ),
            ListTile(
              title: Text("Privacy Policy",style: TextStyle(color: Colors.green),),
            ),
            ListTile(
              title: Text("Terms and Conditions",style: TextStyle(color: Colors.green),),
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>TermsconditionsMain()));},
            ),
            new Divider(color: Colors.grey,),
            ListTile(
              leading: Icon(Icons.location_pin,color: Colors.green),
              title: Text("Contact us",style: TextStyle(color: Colors.green),),
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>contactus()));},
            ),
          ],
        ),
      ),


      body: Homepage(),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: mqHeight / 14,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              BottomAppBarItem(
                nameItem: "Home",
                iconItem: Icons.home,
                // onTap: () => setState(() => _myPage.jumpToPage(0)),
              ),
              BottomAppBarItem(
                nameItem: "Offer",
                iconItem: Icons.surround_sound,
                // onTap: () => setState(() => _myPage.jumpToPage(1)),
              ),
              BottomAppBarItem(
                nameItem: "Chat",
                iconItem: Icons.chat,
                // onTap: () => setState(() => _myPage.jumpToPage(2)),
              ),
              BottomAppBarItem(
                nameItem: "Account",
                iconItem: Icons.person,
                // onTap: () => setState(() => _myPage.jumpToPage(3)),
              ),
            ],
          ),
        ),
        color: Colors.white,
      ),
    );
  }
}

class BottomAppBarItem extends StatefulWidget {
  final String nameItem;
  final IconData iconItem;
  // final Function onTap;
  BottomAppBarItem({
    this.nameItem = "Home",
    this.iconItem = Icons.home,
    // this.onTap,
  });
  @override
  _BottomAppBarItemState createState() => _BottomAppBarItemState();
}

class _BottomAppBarItemState extends State<BottomAppBarItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>myaccount()));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(widget.iconItem, color: Colors.green),
          Text(widget.nameItem, style: TextStyle(color: Colors.green)),
        ],
      ),
    );
  }
}
