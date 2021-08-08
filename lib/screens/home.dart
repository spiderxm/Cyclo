import 'package:cyclo/screens/settings.dart';
import 'package:cyclo/screens/shoppingCart.dart';
import 'package:cyclo/screens/suggestions.dart';
import 'package:cyclo/screens/wishlist.dart';
import 'package:cyclo/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cyclo/customIcons/custom_drawer_icon.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  final List<Widget> _children = [Suggestion(), Cart()];
  GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        drawer: drawer,
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
            onPressed: () {
              _key.currentState.openDrawer();
            },
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
              onPressed: () {
                Navigator.pushNamed(context, Settings.route);
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (builder) {
                //   return Settings();
                // }));
              },
              tooltip: 'Settings',
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xffECEFF4),
          showUnselectedLabels: true,
          showSelectedLabels: false,
          currentIndex: index,
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
                label: "Home"),
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
          onTap: (index) {
            setState(() {
              this.index = index;
            });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          tooltip: 'WishList',
          onPressed: () {
            Navigator.pushNamed(context, WishList.route );
          },
          elevation: 8,
          backgroundColor: Color(0xff171B27),
          child: Icon(
            FontAwesomeIcons.heart,
            color: Color(0xffFF782D),
          ),
        ),
        body: _children[index]);
  }
}
