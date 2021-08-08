import 'package:cyclo/widgets/imageDisplay.dart';

import 'package:flutter/material.dart';
import 'package:cyclo/models/item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Item item = new Item(
        images: [
          "https://d2f9uwgpmber13.cloudfront.net/public/uploads/mobile/7c902eb8a6f1f3453fc9e0e99f34838c",
          "https://d2f9uwgpmber13.cloudfront.net/public/uploads/mobile/d774dd3de09fe0ecf043ddb9383c76bc",
          "https://d2f9uwgpmber13.cloudfront.net/public/uploads/mobile/a9b4f4f1e7a144941d9c072e13937eab",
          "https://d2f9uwgpmber13.cloudfront.net/public/uploads/mobile/87e5d8fda7b970c4fe5ffd23ad400436"
        ],
        description:
            "turpis tincidunt id aliquet risus feugiat in ante metus dictum at tempotincidunt id aliquet risus feugiat in ante metus dictum at tempor commodo ullamcorper a lacus vestibulum sed arcu non. ",
        title: "Men’s Cycle 26”",
        title1: "Hero Cycle Blue 05",
        color: Colors.blue,
        price: 6999);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        bottomOpacity: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            size: 24,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
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
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            onPressed: () {},
            tooltip: 'Shopping Cart',
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            ImageDisplayWidget(item.images),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      item.title1,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.red,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.orange,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .7,
                      child: Text(
                        item.description,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .7,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15),
                              ),
                              primary: Colors.white,
                              textStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '₹ ' + item.price.toString() + '.00',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                Spacer(),
                                Text(
                                  'ADD TO CART  ',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                Icon(
                                  Icons.add_shopping_cart_rounded,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                              tooltip: 'Add to Wishlist',
                              icon: Icon(
                                FontAwesomeIcons.heart,
                                color: Colors.orange,
                              ),
                              onPressed: () {}),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
