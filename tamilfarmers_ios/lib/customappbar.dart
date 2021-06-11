import 'package:flutter/material.dart';
import 'package:tamilfarmers_ios/cart/cart.dart';
import 'package:tamilfarmers_ios/cart/cartmain.dart';
import 'package:tamilfarmers_ios/myaccount/notifications/notificationsmain.dart';

class customappbar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  @override
  final Size preferredSize;

  customappbar(
      this.title, {
        Key key,
      })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: Colors.black,fontSize: 12),
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
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.menu),
        // onPressed: () => Navigator.pop(context),
        color: Colors.black,
      ),
    );
  }
}