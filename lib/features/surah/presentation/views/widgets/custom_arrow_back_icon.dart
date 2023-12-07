import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomArrowBackIcon extends StatelessWidget {
  const CustomArrowBackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 47),
      child: IconButton(
        onPressed: () {
          GoRouter.of(context).pop();
        },
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
    );
  }
}
