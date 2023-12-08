import 'package:flutter/material.dart';
import 'package:islamic_app/constants.dart';

abstract class Styles {
  static const textStyle20 = TextStyle(
    fontSize: 20,
    color: kPrimaryColor,
    fontWeight: FontWeight.bold,
  );
  static const textStyle24 = TextStyle(
    fontSize: 24,
    color: kTextColor,
    fontFamily: kAmiri,
    fontWeight: FontWeight.bold,
  );
  static const textStyle12 = TextStyle(
    fontSize: 12,
    color: kTextColor,
    fontWeight: FontWeight.w400,
  );
  static const textStyle16 = TextStyle(
    fontSize: 16,
    color: kTextColor,
    fontWeight: FontWeight.bold,
  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static const labelTextFiledStyle = TextStyle(
    fontSize: 12,
    color: kPrimaryColor,
  );
}
