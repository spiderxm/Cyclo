import 'package:cyclo/screens/itemDetail.dart';
import 'package:flutter/material.dart';

class SuggestionItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double price;

  SuggestionItem({this.imageUrl, this.name, this.price});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(0),
      splashColor: Colors.white,
      focusColor: Colors.white,
      highlightColor: Colors.white,
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => ItemDetail()));
      },

      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15),
            /** Image of item and button for full detail of product **/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 120,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          // border: Border.all(color: Colors.grey, width: .75),
                          color: Colors.white,
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
                            imageUrl,
                            fit: BoxFit.cover,
                          )),
                    ),
                    Positioned(
                      top: -10,
                      right: -10,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Colors.black),
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (ctx) => ItemDetail()));
                            },
                            color: Colors.white,
                            icon: Icon(
                              Icons.navigate_next_rounded,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                /** Name of item **/
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 5),
                  child: Text(
                    name.substring(0, name.length > 20 ? 20 : name.length),
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'RobotoCondensed'),
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                  ),
                ),
                /** Price of item **/
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 3),
                  child: Text(
                    "₹ " + price.toString(),
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
