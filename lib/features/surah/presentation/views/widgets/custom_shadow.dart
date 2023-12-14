import 'package:flutter/material.dart';

class CustomShadow extends StatelessWidget {
  const CustomShadow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 95,
      left: 0,
      right: 0,
      child: ClipPath(
        clipper: CurvedShapeClipper(),
        child: Container(
          height: 75,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(23),
              bottomRight: Radius.circular(23),
            ),
          ),
        ),
      ),
    );
  }
}

class CurvedShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 10);
    path.quadraticBezierTo(size.width / 8, 100, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
