import 'package:flutter/material.dart';

class BottomNavigationBarCustom extends StatefulWidget {
  @override
  _BottomNavigationBarCustomState createState() =>
      _BottomNavigationBarCustomState();
}

class _BottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
  // PageController _myPage = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    final mqHeight = MediaQuery.of(context).size.height;
    return Scaffold(
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
      // onTap: widget.onTap,
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