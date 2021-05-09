import 'package:flutter/material.dart';

class SideBarTile extends StatelessWidget {
  final IconData _icon;
  final String title;

  SideBarTile(this._icon, this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xffD3D3D3),
            maxRadius: 25,
            child: FittedBox(
              child: Icon(
                _icon,
                color: Colors.white,
                size: 25,
                semanticLabel: title,
              ),
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
        ],
      ),
    );
  }
}
