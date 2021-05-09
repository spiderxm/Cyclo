import 'package:cyclo/customIcons/custom_drawer_icon.dart';
import 'package:cyclo/widgets/WishListItem.dart';
import 'package:cyclo/widgets/dashed_line.dart';
import 'package:flutter/material.dart';

final List items = [
  [
    "Frog Top Cycle",
    "https://www.frogbikes.one/images/L-FM62_media-Metallic%20Grey%20Neon%20Red-0.jpg?resizeid=5&resizeh=1200&resizew=1200"
  ],
  [
    "Bottle Cage",
    "https://d2f9uwgpmber13.cloudfront.net/public/uploads/c9bdf797dfb5a509f9054bad2e69d5ed",
  ],
  [
    "Modern Helmet H01",
    "https://d2f9uwgpmber13.cloudfront.net/public/image_new/00cacde27006d67a932029f610e6dc4e",
  ]
];

class WishList extends StatelessWidget {
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
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            onPressed: () {},
            tooltip: 'Settings',
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          children: [
            Center(
              child: Text(
                "WishList",
                style: TextStyle(
                    fontFamily: 'AdventPro',
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 36),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              items.length.toString() + ' Items',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xffB0B0B0),
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            DashSeparator(
              color: Color(0xffEAEAEA),
            ),
            Expanded(
                child: ListView.builder(
              itemBuilder: (context, index) {
                return WishListItem(items[index][0], items[index][1]);
              },
              itemCount: items.length,
            ))
          ],
        ),
      ),
    );
  }
}
