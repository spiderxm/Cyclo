import 'package:flutter/material.dart';

class PaymentTile extends StatefulWidget {
  String title;
  String subtitle;
  String subtitle2;
  String imageUrl;

  PaymentTile({this.subtitle, this.title, this.subtitle2, this.imageUrl});

  @override
  _PaymentTileState createState() => _PaymentTileState();
}

class _PaymentTileState extends State<PaymentTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            color: Color(0xffECEFF4),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: isSelected
                ? Border.all(color: Colors.black, width: 1)
                : Border.all(color: Color(0xff9B9B9B), width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 1,
                    color: Colors.black,
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  widget.subtitle,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14,
                    letterSpacing: 1,
                    color: Colors.black54,
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  widget.imageUrl,
                  height: 35,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.subtitle2,
                  style: TextStyle(
                    fontSize: 14,
                    letterSpacing: 1,
                    color: Colors.black54,
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
    );
  }
}
