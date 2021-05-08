import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double price;

  HomeItem({this.imageUrl, this.name, this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 15),
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
                      top: -20,
                      right: -20,
                      child: ElevatedButton(
                          onPressed: () {},
                          autofocus: true,
                          style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                width: .60,
                                color: Colors.black,
                              ),
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(150.0))),
                          child: Icon(
                            Icons.navigate_next,
                            color: Colors.black,
                          )))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  name.substring(0, name.length > 20 ? 20 : name.length),
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontFamily: 'Roboto'),
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                ),
              ),
              Text("₹ " + price.toString())
            ],
          ),
        ),
      ],
    );
  }
}
