import 'package:flutter/material.dart';
import 'package:pw_ecrommarce/view/utils/colors.dart';

class CustomTitleSubtitle extends StatelessWidget {
  final String title;
  final String subTitle;
  const CustomTitleSubtitle({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 30,
              fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.blackColor.withOpacity(.6)),
        ),
      ],
    );
  }
}
