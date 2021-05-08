import 'package:cyclo/screens/shopping_cart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cyclo/customIcons/custom_drawer_icon.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        bottomOpacity: 0,
        leading: IconButton(
          icon: Icon(
            MyFlutterApp.drawer_icon,
            size: 18,
            color: Colors.black,
          ),
          onPressed: () {},
          tooltip: 'Side Drawer',
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
        showUnselectedLabels: true,
        showSelectedLabels: false,
        currentIndex: 1,
        items: [

          BottomNavigationBarItem(
              tooltip: 'Home',
              icon: Icon(
                Icons.home_outlined,
                size: 30,
              ),
              activeIcon: Icon(
                Icons.home,
                color: Color(0xffFF782D),
                size: 30,
              ),
              label: " Home "),
          BottomNavigationBarItem(
              tooltip: 'Shopping Cart',
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
              ),
              activeIcon: Icon(
                Icons.shopping_cart,
                color: Color(0xffFF782D),
                size: 30,
              ),
              label: "Shopping Cart")
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        tooltip: 'WishList',
        onPressed: () {},
        elevation: 8,
        backgroundColor: Color(0xff171B27),
        child: Icon(
          FontAwesomeIcons.heart,
          color: Color(0xffFF782D),
        ),
      ),
      body: Cart(),
    );
  }
}
