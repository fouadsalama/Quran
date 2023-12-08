import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'custom_text_filed.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Gap(20),
            CustomTextFiled(),
          ],
        ),
      ),
    );
  }
}
