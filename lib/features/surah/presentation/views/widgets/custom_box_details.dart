import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/styles.dart';

class CustomBoxDetails extends StatelessWidget {
  const CustomBoxDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 47),
          child: GestureDetector(
            onTap: () {
              showMenu(
                context: context,
                position: const RelativeRect.fromLTRB(150, 100, 200, 500),
                items: [
                  const PopupMenuItem(
                    child: Text('Al-Faatiha'),
                  ),
                  const PopupMenuItem(
                    child: Text('data'),
                  ),
                  const PopupMenuItem(
                    child: Text('data'),
                  ),
                  const PopupMenuItem(
                    child: Text('data'),
                  ),
                  const PopupMenuItem(
                    child: Text('data'),
                  ),
                  const PopupMenuItem(
                    child: Text('data'),
                  ),
                  const PopupMenuItem(
                    child: Text('data'),
                  ),
                ],
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'الفاتحه',
                  style: Styles.textStyle24.copyWith(
                    fontSize: 32,
                  ),
                ),
                const Icon(
                  Icons.expand_more,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 103),
          child: Divider(
            color: Colors.white,
          ),
        ),
        Expanded(
          child: Image.asset(
            AppAssets.bismillah,
          ),
        ),
        const Gap(7),
      ],
    );
  }
}
