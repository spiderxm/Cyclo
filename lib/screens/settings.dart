import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "SETTINGS",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                  decoration: TextDecoration.underline,
                  letterSpacing: 2),
              textAlign: TextAlign.left,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.email_outlined,
                    size: 30,
                    semanticLabel: 'Email',
                  ),
                  Text("Email",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          letterSpacing: 0)),
                  Spacer(),
                  IconButton(
                      icon: Icon(Icons.arrow_forward_ios), onPressed: () {})
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
