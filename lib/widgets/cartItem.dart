import 'package:cyclo/models/cart_item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartItem extends StatelessWidget {
  int index;

  CartItem(this.index);

  final List<CartItemModel> cartItems = [
    CartItemModel(
      title: 'Modern Helmet H01',
      price: 5999,
      quantity: 1,
      imageUrl: 'assets/images/a1.png',
    ),
    CartItemModel(
      title: 'BMW CycleBlue 05',
      price: 79999,
      quantity: 1,
      imageUrl: 'assets/images/c1.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      // height: size.height * 0.15,
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: Color(0xffF5F6F8),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
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
            child: Container(
              height: size.height * 0.10,
              child: Image.asset(
                cartItems[index].imageUrl,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cartItems[index].title.substring(
                      0,
                      cartItems[index].title.length > 20
                          ? 20
                          : cartItems[index].title.length),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  '₹${cartItems[index].price}.00',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFF505050),
                    fontSize: 16,
                  ),
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.remove_circle_outline_sharp,
                          color: Color(0xffB9B9B9),
                          size: 26,
                        ),
                        onPressed: () {}),
                    Text(
                      '${cartItems[index].quantity}',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.fade,
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.add_circle_outline_sharp,
                          color: Color(0xffB9B9B9),
                          size: 26,
                        ),
                        onPressed: () {}),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffB9B9B9)),
                borderRadius: BorderRadius.all(Radius.circular(50))),
            alignment: Alignment.center,
            child: IconButton(
              tooltip: 'Delete Item',
              icon: Icon(
                Icons.delete_outline_rounded,
                color: Colors.red,
                size: 22,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
