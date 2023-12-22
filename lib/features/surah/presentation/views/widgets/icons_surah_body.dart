import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class CustomSurahBodyIcon extends StatelessWidget {
  const CustomSurahBodyIcon({
    super.key,
    required this.image,
    this.onPressed,
  });
  final String image;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SizedBox(
        height: 20,
        child: Image.asset(
          image,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
