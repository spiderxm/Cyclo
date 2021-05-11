import 'package:flutter/material.dart';

class SettingTile extends StatelessWidget {
  final IconData icon;
  final String title;
  String route;

  SettingTile({this.icon, this.title, this.route});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xffD3D3D3),
            child: Icon(
              icon,
              color: Colors.white,
              size: 25,
              semanticLabel: title,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    letterSpacing: 0)),
          ),
          Spacer(),

          IconButton(
              icon: Icon(Icons.arrow_forward_ios_rounded),
              onPressed: () {
                if (route != null) {
                  Navigator.of(context).pushNamed(route);
                }
              })

        ],
      ),
    );
  }
}
