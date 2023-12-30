import 'package:flutter/material.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // return Container();
    return const Center(
      child: CircularProgressIndicator(
        color: Color(0xff87D1A4),
      ),
    );
  }
}
