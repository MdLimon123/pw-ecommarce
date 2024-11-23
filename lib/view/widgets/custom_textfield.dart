import 'package:flutter/material.dart';
import 'package:pw_ecrommarce/view/utils/colors.dart';

class CustomTextfield extends StatelessWidget {
  final String title;
  final bool? isSecure;
  final bool? isRequired;
  const CustomTextfield(
      {super.key, required this.title, this.isSecure, this.isRequired});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: isRequired == true ?(String? value) {
        if (value == null || value.isEmpty) {
          return 'This field is required';
        }
        return null;
      }: null,
      obscureText: isSecure ?? false,
      decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.fieldBackground,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.primaryColor, width: 2)),
              errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.red, width: 2)),
          hintText: title),
          
    );
  }
}
