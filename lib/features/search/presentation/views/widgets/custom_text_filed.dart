import 'package:flutter/material.dart';
import 'package:islamic_app/constants.dart';
import 'package:islamic_app/core/utils/styles.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        labelText: 'Search Surah...',
        labelStyle: Styles.labelTextFiledStyle,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: kPrimaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
