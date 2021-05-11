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
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
            size: 25,

          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          tooltip: 'Back',
        ),
        centerTitle: true,
        title: Text(
          "CYCLo",
          style: TextStyle(
              fontFamily: 'AdventPro',
              fontWeight: FontWeight.w500,
              color: Colors.black,
              fontSize: 35),
        ),

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
              padding: const EdgeInsets.only(left: 18.0,bottom: 10),
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
                  SettingTile(Icons.notifications, "Notifications"),
                  SettingTile(Icons.lock, "Privacy"),
                  SettingTile(Icons.security, "Security"),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Divider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                  ),
                  SettingTile(Icons.email_outlined, "Email"),
                  SettingTile(Icons.phone, "Mobile Number"),
                  SettingTile(Icons.map_outlined, "Address Details"),
                  SettingTile(Icons.wb_sunny_outlined, "Display Mode"),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Divider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                  ),
                  SettingTile(Icons.contact_phone_outlined, "Contact Us"),
                  SettingTile(Icons.menu_book, "Terms Of Service"),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
