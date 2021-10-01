import 'package:cyclo/services/url.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:line_icons/line_icons.dart';

class ContactUsScreen extends StatelessWidget {
  static String route = "/contact-us";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        bottomOpacity: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          tooltip: 'Back',
        ),
        title: Text(
          "Contact us",
          style: TextStyle(
              fontFamily: 'AdventPro',
              fontWeight: FontWeight.w500,
              color: Colors.black,
              fontSize: 35),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            LineIcons.mailBulk,
                            color: Colors.white,
                            size: 60,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start  ,
                              children: [
                                Text(
                                  "Write us at",
                                  style: TextStyle(
                                    fontFamily: 'AdventPro',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    letterSpacing: 2,
                                  ),
                                ),
                                Text("contactcycloprime@gmail.com",
                                    style: TextStyle(
                                      fontFamily: 'AdventPro',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22,
                                    ),
                                    overflow: TextOverflow.ellipsis)
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: 200,
                        child: MaterialButton(
                          shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          onPressed: () {
                            UrlServices.openEmail(
                                "mailto:contactcycloprime@gmail.com");
                          },
                          color: Colors.white,
                          child: Row(
                            children: [
                              Icon(Icons.email),
                              Spacer(),
                              Text(
                                "Write Email",
                                style: TextStyle(
                                    fontFamily: 'AdventPro',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,letterSpacing: 2,),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            LineIcons.phone,
                            color: Colors.white,
                            size: 60,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Call us at",
                                  style: TextStyle(
                                      fontFamily: 'AdventPro',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,letterSpacing: 2,),
                                ),
                                Text("+91 xxxxxxxxxx",
                                    style: TextStyle(
                                      fontFamily: 'AdventPro',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22,
                                    ),
                                    overflow: TextOverflow.ellipsis)
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: 200,
                        child: MaterialButton(
                          shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          onPressed: () {
                            UrlServices.openCall("tel:99999xxxxx");
                          },
                          color: Colors.white,
                          child: Row(
                            children: [
                              Icon(Icons.phone),
                              Spacer(),
                              Text(
                                "Call",
                                style: TextStyle(
                                    fontFamily: 'AdventPro',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,letterSpacing: 2,),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
