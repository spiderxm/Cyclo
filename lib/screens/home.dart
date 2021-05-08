
import 'package:cyclo/widgets/HomeItem.dart';

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

      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                child: TextFormField(
                  readOnly: true,
                  textInputAction: TextInputAction.next,
                  onSaved: (value) {},
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide:
                          new BorderSide(width: 2, color: Colors.grey[200]),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide:
                          new BorderSide(width: 2, color: Colors.grey[200]),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                )),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                height: 250,
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "https://www.frogbikes.one/images/L-FM62_media-Metallic%20Grey%20Neon%20Blue-0.default.jpg?resizeid=5&resizeh=1200&resizew=1200",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0, bottom: 10),
              child: Text(
                "Recommendations",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  HomeItem(
                    imageUrl:
                        "https://www.frogbikes.one/images/L-FM62_media-Metallic%20Grey%20Neon%20Red-0.jpg?resizeid=5&resizeh=1200&resizew=1200",
                    name: "Lallantop Cycle",
                    price: 99999,
                  ),
                  HomeItem(
                    imageUrl:
                        "https://www.frogbikes.one/images/L-FM62_media-Metallic%20Grey%20Neon%20Red-0.jpg?resizeid=5&resizeh=1200&resizew=1200",
                    name: "Sallu bhai ki cycle",
                    price: 89909,
                  ),
                  HomeItem(
                    imageUrl:
                        "https://d2f9uwgpmber13.cloudfront.net/public/uploads/c9bdf797dfb5a509f9054bad2e69d5ed",
                    name: "BOTTLE CAGE",
                    price: 1999,
                  ),
                  HomeItem(
                    imageUrl:
                        "https://d2f9uwgpmber13.cloudfront.net/public/image_new/00cacde27006d67a932029f610e6dc4e",
                    name: "Modern Helmet H01",
                    price: 999,
                  ),
                  HomeItem(
                    imageUrl:
                        "https://www.frogbikes.one/images/L-FM62_media-Metallic%20Grey%20Neon%20Red-0.jpg?resizeid=5&resizeh=1200&resizew=1200",
                    name: "Modern Helmet H01",
                    price: 999,
                  )
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
