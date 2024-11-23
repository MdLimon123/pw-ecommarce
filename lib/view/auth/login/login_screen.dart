import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pw_ecrommarce/view/auth/register/register_screen.dart';
import 'package:pw_ecrommarce/view/home/home_screen.dart';
import 'package:pw_ecrommarce/view/utils/colors.dart';
import 'package:pw_ecrommarce/view/widgets/customButton.dart';
import 'package:pw_ecrommarce/view/widgets/custom_app_bar.dart';
import 'package:pw_ecrommarce/view/widgets/custom_textfield.dart';
import 'package:pw_ecrommarce/view/widgets/custom_title_subtitle.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                      title: 'Login here',
                      subTitle: 'Welcome back you’ve been missed!'),
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
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot your password?',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryColor),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Custombutton(
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                Get.to(() => const HomeScreen());
                              }
                            },
                            title: 'Sign in'),
                        const SizedBox(
                          height: 10,
                        ),
                        Custombutton(
                          onTap: () => Get.to(() => const RegisterScreen()),
                          title: 'Create new account',
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
