import 'package:cyclo/constants/design_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class OtpSignUp extends StatefulWidget {
  @override
  _OtpSignUpState createState() => _OtpSignUpState();
}

class _OtpSignUpState extends State<OtpSignUp> {
  @override
  Widget build(BuildContext context) {
    String phoneNumber;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Sign In with OTP',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            letterSpacing: 2,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                child: Image.asset(
                  'assets/images/otp.png',
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Text(
                  "Please Enter Your Mobile Number, "
                  "You'll receive a 4 digit code to verify next.",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff818181),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                  child: TextField(
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    decoration: inputDecoration.copyWith(
                      hintText: 'Enter Phone Number',
                      hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey[700],
                      ),
                    ),
                    onChanged: (value) {
                      phoneNumber = value;
                    },
                    cursorHeight: 20,
                    keyboardType: TextInputType.phone,
                    textAlign: TextAlign.center,
                    cursorColor: Color(0xffff8300),
                    maxLength: 10,

                    // labelText: 'Enter you phone number',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.symmetric(vertical: 10, horizontal: 50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
