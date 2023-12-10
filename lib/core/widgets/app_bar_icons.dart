import 'package:flutter/material.dart';

class AppBarIcons extends StatelessWidget {
  const AppBarIcons({
    super.key,
    required this.icon,
    this.onPressed,
  });
  final Widget icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      onPressed: onPressed,
    );
  }
}
