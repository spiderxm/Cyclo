import 'package:cyclo/constants/urls.dart';
import 'package:cyclo/widgets/SideBarTile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

final Widget drawer = Drawer(
  child: SafeArea(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Center(
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ]),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                      "https://media-exp1.licdn.com/dms/image/C5603AQGyNpREZ8VX_A/profile-displayphoto-shrink_200_200/0/1603689553097?e=1624492800&v=beta&t=9-z3EuafsNUsQpSex2LI_vWSK5k_HG1Lpv4g4bGWUOg")),
            ),
          ),
        ),
        Text(
          "ANANT VERMA".toUpperCase(),
          textAlign: TextAlign.left,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'AdventPro',
              fontSize: 24),
        ),
        Text(
          " anantverma2001@gmail.com",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: 'AdventPro',
              fontSize: 16),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
          child: TextFormField(
            // readOnly: true,
            cursorColor: Color(0xffFF782D),
            textInputAction: TextInputAction.next,
            onSaved: (value) {},
            decoration: InputDecoration(
              fillColor: Colors.grey[200],
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: new BorderSide(width: 2, color: Colors.grey[200]),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: new BorderSide(width: 2, color: Colors.grey[200]),
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey.withOpacity(0.4),
              ),
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.grey),
              contentPadding: EdgeInsets.fromLTRB(5, 10, 5, 0),
            ),
            style: TextStyle(
                color: Colors.black.withOpacity(0.7),
                fontWeight: FontWeight.w100,
                fontSize: 20),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView(
            children: [
              SideBarTile(FontAwesomeIcons.firstOrder, "Your orders"),
              Divider(
                height: 1.5,
              ),
              SideBarTile(Icons.shopping_cart_outlined, "Your Cart"),
              Divider(
                height: 1.5,
              ),
              SideBarTile(FontAwesomeIcons.heart, "Your WishList"),
              Divider(
                height: 1.5,
              ),
              SideBarTile(Icons.category, "Categories"),
              Divider(
                height: 1.5,
              ),
              SideBarTile(FontAwesomeIcons.map, "Address"),
              Divider(
                height: 1.5,
              ),
              SideBarTile(FontAwesomeIcons.language, "Language"),
              Divider(
                height: 1.5,
              ),
              SideBarTile(Icons.settings, "Settings"),
              Divider(
                height: 1.5,
              ),
              SideBarTile(Icons.contact_phone_outlined, "Customer Care"),
              Divider(
                height: 1.5,
              ),
              SideBarTile(Icons.exit_to_app, "Logout"),
              Divider(
                height: 1.5,
              ),
            ],
          ),
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Text(
                " Made with ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: .14,
                    fontFamily: 'AdventPro'),
              ),
              Icon(
                FontAwesomeIcons.solidHeart,
                color: Colors.red,
              ),
              Spacer(),
              IconButton(
                  icon: Icon(
                    FontAwesomeIcons.github,
                    color: Colors.white,
                  ),
                  onPressed: () async {
                    if (await canLaunch(repoUrl)) {
                      await launch(
                        repoUrl,
                        forceSafariVC: true,
                        forceWebView: true,
                        enableJavaScript: true,
                      );
                    } else {}
                  }),
            ],
          ),
        ),
      ],
    ),
  ),
);
