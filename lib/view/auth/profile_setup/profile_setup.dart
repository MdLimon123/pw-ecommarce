import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pw_ecrommarce/view/home/home_screen.dart';
import 'package:pw_ecrommarce/view/utils/colors.dart';

import 'package:pw_ecrommarce/view/widgets/customButton.dart';
import 'package:pw_ecrommarce/view/widgets/custom_app_bar.dart';
import 'package:pw_ecrommarce/view/widgets/custom_textfield.dart';
import 'package:pw_ecrommarce/view/widgets/custom_title_subtitle.dart';

class ProfileSetup extends StatelessWidget {
  const ProfileSetup({super.key});

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
                      title: 'Profile Setup',
                      subTitle:
                          'Please fill be below details to complete your profile.'),
                  const SizedBox(
                    height: 50,
                  ),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors.primaryColor, width: 2),
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                        "https://www.shutterstock.com/image-vector/avatar-gender-neutral-silhouette-vector-260nw-2470054311.jpg",
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: AppColors.primaryColor, width: 2)),
                              child: Icon(
                                Icons.camera_alt,
                                color: AppColors.primaryColor,
                                size: 20,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const CustomTextfield(
                          title: 'Full Name',
                          isRequired: true,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomTextfield(
                          title: 'Address',
                          isRequired: true,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomTextfield(
                          title: 'Phone Number',
                          isRequired: true,
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
                            title: 'Complete Setup'),
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
