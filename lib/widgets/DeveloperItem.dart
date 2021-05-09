import 'package:cyclo/models/developer.dart';
import 'package:cyclo/services/url.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DeveloperCard extends StatelessWidget {
  final Developer _developer;

  DeveloperCard(this._developer);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 60),
                    Center(
                      child: Text(
                        _developer.name,
                        style: TextStyle(
                            fontFamily: 'AdventPro',
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 26),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Text(
                        _developer.email,
                        style: TextStyle(
                            fontFamily: 'AdventPro',
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 22),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Icon(
                              FontAwesomeIcons.github,
                              color: Colors.white,
                              size: 35,
                            ),
                            onPressed: () {
                              UrlServices.openUrl(_developer.githubUrl);
                            }),
                        SizedBox(
                          width: 30,
                        ),
                        IconButton(
                            icon: Icon(
                              FontAwesomeIcons.linkedin,
                              color: Colors.white,
                              size: 35,
                            ),
                            onPressed: () {
                              UrlServices.openUrl(_developer.linkedinUrl);
                            })
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 30,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [

                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(_developer.imageUrl),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
