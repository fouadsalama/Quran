import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/core/utils/styles.dart';

class CustomReadButton extends StatelessWidget {
  const CustomReadButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      height: 31,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 11),
            child: Text(
              'Continue ',
              style: GoogleFonts.montserrat(
                textStyle: Styles.textStyle12.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(width: 11),
          const Icon(
            Icons.arrow_forward,
            size: 20,
            color: Color(0xff004B40),
          ),
        ],
      ),
    );
  }
}
