import 'package:flutter/material.dart';

class CustomAppBarIcons extends StatelessWidget {
  const CustomAppBarIcons({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      width: 24,
      child: Image.asset(
        image,
        color: const Color(0xff888888),
      ),
    );
  }
}
