import 'package:flutter/material.dart';

final inputDecoration =InputDecoration(
  fillColor: Colors.grey.shade100,
  filled: true,
  focusedBorder: OutlineInputBorder(
    borderRadius:
    BorderRadius.all(Radius.circular(20)),
    borderSide: new BorderSide(
      width: 2,
      color: Color(0xfffc8a00),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius:
    BorderRadius.all(Radius.circular(20)),
    borderSide: new BorderSide(
        width: 2, color: Color(0xffacacac)),
  ),
);