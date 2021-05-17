import 'package:cyclo/screens/developers.dart';
import 'package:cyclo/screens/privacy_policy.dart';
import 'package:cyclo/widgets/SettingTile.dart';
import 'package:cyclo/widgets/dashed_line.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
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
            Icons.navigate_before_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          tooltip: 'Back',
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
      body: SafeArea(
        child: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "ANANT VERMA".toUpperCase(),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Roboto',
                            fontSize: 24),
                      ),
                      Text(
                        " anantverma2001@gmail.com",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                            fontSize: 16),
                      )
                    ],
                  ),
                ),
                Spacer(),
                IconButton(
                    icon: Icon(
                      Icons.navigate_next,
                      size: 30,
                    ),
                    onPressed: () {})
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                "SETTINGS",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 25,
                    letterSpacing: 2),
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  SettingTile(
                      icon: Icons.notifications, title: "Notifications"),
                  SettingTile(icon: Icons.lock, title: "Privacy"),
                  SettingTile(icon: Icons.security, title: "Security"),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Divider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                  ),
                  SettingTile(icon: Icons.email_outlined, title: "Email"),
                  SettingTile(icon: Icons.phone, title: "Mobile Number"),
                  SettingTile(
                      icon: Icons.map_outlined, title: "Address Details"),
                  SettingTile(
                      icon: Icons.wb_sunny_outlined, title: "Display Mode"),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Divider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                  ),
                  SettingTile(
                      icon: Icons.contact_phone_outlined, title: "Contact Us"),
                  SettingTile(
                    icon: Icons.menu_book,
                    title: "Privacy Policy",
                    route: PrivacyPolicyScreen.route,
                  ),
                  SettingTile(
                      icon: Icons.code,
                      title: "Developers",
                      route: DeveloperScreen.route),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
