import 'package:flutter/material.dart';
import 'package:pw_ecrommarce/view/utils/colors.dart';

class Custombutton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final Color? backgroundColor;
  final Color? textColor;
  const Custombutton(
      {super.key, required this.title, this.onTap, this.backgroundColor, this.textColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: 60,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          decoration: BoxDecoration(
              color: backgroundColor ?? AppColors.primaryColor,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              title,
              style:  TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: textColor ?? Colors.white),
            ),
          )),
    );
  }
}
