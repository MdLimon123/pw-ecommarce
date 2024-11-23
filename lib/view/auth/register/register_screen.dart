import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pw_ecrommarce/view/auth/login/login_screen.dart';
import 'package:pw_ecrommarce/view/auth/profile_setup/profile_setup.dart';
import 'package:pw_ecrommarce/view/utils/colors.dart';
import 'package:pw_ecrommarce/view/widgets/customButton.dart';
import 'package:pw_ecrommarce/view/widgets/custom_app_bar.dart';
import 'package:pw_ecrommarce/view/widgets/custom_textfield.dart';
import 'package:pw_ecrommarce/view/widgets/custom_title_subtitle.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomTitleSubtitle(
                      title: 'Create Account',
                      subTitle:
                          'Create an account so you can explore all the existing jobs'),
                  const SizedBox(
                    height: 50,
                  ),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomTextfield(
                          title: 'Email',
                          isRequired: true,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomTextfield(
                          title: 'Password',
                          isRequired: true,
                          isSecure: true,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomTextfield(
                          title: 'Confirm Password',
                          isRequired: true,
                          isSecure: true,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Custombutton(
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                Get.to(() => const ProfileSetup());
                              }
                            },
                            title: 'Sign up'),
                        const SizedBox(
                          height: 10,
                        ),
                        Custombutton(
                          onTap: () => Get.to(() => const LoginScreen()),
                          title: 'Already have an account',
                          backgroundColor: Colors.transparent,
                          textColor: AppColors.blackColor.withOpacity(.6),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(),
                  const SizedBox()
                ],
              ),
            ),
          )),
    );
  }
}
