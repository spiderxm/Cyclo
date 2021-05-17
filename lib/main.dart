import 'package:cyclo/screens/checkoutSummary.dart';
import 'package:cyclo/screens/contactUs.dart';
import 'package:cyclo/screens/privacyPolicy.dart';
import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'package:cyclo/screens/developers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cyclo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        DeveloperScreen.route: (ctx) => DeveloperScreen(),
        PrivacyPolicyScreen.route: (ctx) => PrivacyPolicyScreen(),
        ContactUsScreen.route: (ctx) => ContactUsScreen()
      },
    );
  }
}
