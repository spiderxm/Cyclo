import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        bottomOpacity: 0,
        leading: Icon(
          FontAwesomeIcons.bars,
          color: Colors.black,
        ),
        title: Center(
          child: Text(
            "CYCLo",
            style: TextStyle(
                fontFamily: 'AdventPro',
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 35),
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            onPressed: () {},
            tooltip: 'Settings',
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffECEFF4),
        items: [
          BottomNavigationBarItem(
              tooltip: 'Home',
              icon: Icon(
                Icons.home,
                color: Colors.orange,
                size: 30,
              ),
              label: " "),
          BottomNavigationBarItem(
              tooltip: 'Shopping Cart',
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
              ),
              label: " ")
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Tooltip(
          message: 'WishList',
          child: Icon(
            FontAwesomeIcons.heart,
            color: Color(0xffFF782D),
          ),
        ),
      ),
    );
  }
}
