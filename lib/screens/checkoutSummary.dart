import 'package:cyclo/models/cart_item_model.dart';
import 'package:cyclo/widgets/paymentTile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cyclo/customIcons/custom_drawer_icon.dart';
import 'package:cyclo/widgets/dashedLine.dart';

class CheckoutSummary extends StatelessWidget {
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: TextButton.icon(
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            primary: Colors.white,
            padding: EdgeInsets.fromLTRB(5, 20, 0, 0),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black54,
          ),
          label: Text(
            'Back',
            style: TextStyle(
                color: Colors.black54,
                fontFamily: 'RobotoCondensed',
                letterSpacing: 0.6,
                fontWeight: FontWeight.w400,
                fontSize: 22),
          ),
        ),
        leadingWidth: double.infinity,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 30, 10, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Order Details",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 24,
                  letterSpacing: 1,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // todo: Items List

              Container(
                height: size.height * 0.25,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: ListTile(
                        leading: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: Offset(0, 3),
                                ),
                              ]),
                          child: Image.asset(
                            cartItems[index].imageUrl,
                            fit: BoxFit.contain,
                          ),
                        ),
                        title: Text(
                          cartItems[index].title.substring(
                              0,
                              cartItems[index].title.length > 20
                                  ? 20
                                  : cartItems[index].title.length),
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.fade,
                          maxLines: 1,
                        ),
                        subtitle: Text(
                          '₹ ${cartItems[index].price}.00',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xffFF505050),
                            fontSize: 18,
                          ),
                        ),
                        trailing: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            '${cartItems[index].quantity}',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: cartItems.length,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              /** Amount Container **/
              Container(
                padding: const EdgeInsets.only(left: 10, right: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 1,
                            color: Colors.black54,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "₹ 85998.00",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery Fee",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 1,
                            color: Colors.black54,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "₹ 50.00",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DashSeparator(
                      color: Color(0xffEAEAEA),
                      height: 1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Amount",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1,
                            color: Colors.black54,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "₹ 86048.00",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              //   todo: Payment Methods
              Text(
                "Payment Methods",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 24,
                  letterSpacing: 1,
                  color: Colors.black,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: size.height * 0.25,
                child: ListView(
                  children: [
                    PaymentTile(
                      title: 'Debit / Credit Card',
                      subtitle: 'xxxx xxxx xxxx 7851',
                      subtitle2: '04/23',
                      imageUrl: 'assets/images/debitcard.png',
                    ),
                    PaymentTile(
                      title: 'UPI',
                      subtitle: 'xyz@abc.com',
                      subtitle2: 'Gpay, PayPal, Paytm',
                      imageUrl: 'assets/images/gPay.png',
                    ),
                    PaymentTile(
                      title: 'Cash On Delivery',
                      subtitle: 'Pay on your Doorstep',
                      subtitle2: 'Cash',
                      imageUrl: 'assets/images/cash.png',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 15, 30, 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Color(0xff171B27),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "PAY ₹ 86048",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 24,
                          letterSpacing: 0.5,
                          color: Colors.white,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Icon(
                        MyFlutterApp.forward_icon,
                        color: Colors.white70,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
