import 'package:cyclo/models/developer.dart';
import 'package:cyclo/services/developers/developerService.dart';
import 'package:cyclo/widgets/developerItem.dart';
import 'package:flutter/material.dart';

class DeveloperScreen extends StatelessWidget {
  final List<Developer> developers = new DeveloperService().getDevelopers();
  static final String route = "/developers";

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
        ),
        body: Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            child: SingleChildScrollView(
              child: Column(children: [
                Center(
                  child: Text(
                    "Developers",
                    style: TextStyle(
                        fontFamily: 'AdventPro',
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 36),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (ctx, index) {
                    return DeveloperCard(developers[index]);
                  },
                  itemCount: developers.length,
                )
              ]),
            )));
  }
}
