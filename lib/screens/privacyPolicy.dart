import 'package:cyclo/constants/privacy_policy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  static String route = "/privacy-policy";

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
            "Privacy Policy",
            style: TextStyle(
                fontFamily: 'AdventPro',
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 35),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.all(10), child: Markdown(data: privacyPolicy)),
      ),
    );
  }
}
