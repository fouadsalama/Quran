import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/styles.dart';

class CustomBoxDetails extends StatefulWidget {
  const CustomBoxDetails({
    super.key,
    required this.model,
  });
  final DataModel model;
  @override
  State<CustomBoxDetails> createState() => _CustomBoxDetailsState();
}

bool isSelected = false;

class _CustomBoxDetailsState extends State<CustomBoxDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 47),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.model.name!,
                style: Styles.textStyle24.copyWith(
                  fontSize: 32,
                ),
              ),
              PopupMenuButton(
                  position: PopupMenuPosition.under,
                  icon: Icon(
                    isSelected == false ? Icons.expand_more : Icons.expand_less,
                    color: Colors.white,
                  ),
                  onOpened: () {
                    setState(() {
                      isSelected = true;
                    });
                  },
                  onCanceled: () {
                    setState(() {
                      isSelected = false;
                    });
                  },
                  itemBuilder: (context) => [
                        const PopupMenuItem(
                          child: Text('Al-Faatiha'),
                        ),
                        const PopupMenuItem(
                          child: Text('data'),
                        ),
                      ])
            ],
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
