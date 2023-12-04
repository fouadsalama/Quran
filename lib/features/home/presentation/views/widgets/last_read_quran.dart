import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/app_assets.dart';
import 'custom_last_read_details.dart';

class LastReadQuran extends StatelessWidget {
  const LastReadQuran({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 345,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xff006754),
            Color(0xff61B48E),
            Color(0xff87D1A4),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(23),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            AppAssets.shadow,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 27,
              top: 26,
            ),
            child: CustomLastReadDetails(),
          ),
          Expanded(
            child: Image.asset(AppAssets.logo),
          ),
        ],
      ),
    );
  }
}
