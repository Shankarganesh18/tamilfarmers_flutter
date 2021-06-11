import 'package:flutter/material.dart';
import 'package:tamilfarmers_ios/homepagemain.dart';

class categoryappbar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  @override
  final Size preferredSize;

  categoryappbar(
      this.title, {
        Key key,
      })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: Colors.black,fontSize: 15),
      ),
      actions: <Widget>[
        IconButton(
          padding: EdgeInsets.all(5.0),
          icon: Image.asset('assets/image/carticon.png'),
          onPressed: () {
            // Implement navigation to shopping cart page here...
            print('Click Search');
          },
        ),
        IconButton(
          padding: EdgeInsets.all(5.0),
          icon: Icon(Icons.notifications_active),
          // onPressed: () => Navigator.pop(context),
          color: Colors.black,
          // onPressed: () {
          //   // Implement navigation to shopping cart page here...
          //   print('Click Message');
          // },
        ),
      ],
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>HomepageMain())),
        color: Colors.black,
      ),
    );
  }
}