import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class CustomDrawerListTile extends StatelessWidget {
  const CustomDrawerListTile({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });
  final String title;
  final IconData icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: kPrimaryColor,
      ),
      title: Text(
        title,
      ),
      onTap: onTap,
    );
  }
}
