import 'package:cyclo/screens/checkoutSummary.dart';
import 'package:cyclo/widgets/cartItem.dart';
import 'package:cyclo/widgets/dashedLine.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          //  container (My cart) and item no.
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'My Cart',
                  style: TextStyle(
                      fontFamily: 'AdventPro',
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 36),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '2 Items',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xffB0B0B0),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          DashSeparator(
            color: Color(0xffEAEAEA),
          ),
          /** List View for cart items  **/
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 30),
            height: size.height * 0.45,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return CartItem(index);
              },
              itemCount: 2,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          /** Checkout container **/

          DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(15),
            color: Color(0xffB9B9B9),
            dashPattern: [7],
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xffff1f1f1)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Text(
                            "Total".toUpperCase(),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.6,
                              color: Color(0xff7D7D7D),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            "₹ 85998.00",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.6,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => CheckoutSummary()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15),
                      ),
                      primary: Color(0xffFF782D),
                      textStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    child: Text(
                      'Proceed to Checkout'.toUpperCase(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
