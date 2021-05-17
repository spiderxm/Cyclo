import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WishListItem extends StatelessWidget {
  final String name;
  final String imageUrl;

  WishListItem(this.name, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 12, right: 30, top: 12, bottom: 12),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              contentPadding:
                  EdgeInsets.only(left: 10, right: 30, top: 20, bottom: 20),
              leading: Container(
                width: 70,
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
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(imageUrl)),
              ),
              title: Text(name),
              trailing: Icon(
                FontAwesomeIcons.heartBroken,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Positioned(
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black),
            ),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                icon: Icon(
                  Icons.navigate_next_rounded,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          right: 10,
        )
      ],
    );
  }
}
