import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pw_ecrommarce/view/auth/login/login_screen.dart';
import 'package:pw_ecrommarce/view/auth/register/register_screen.dart';
import 'package:pw_ecrommarce/view/widgets/customButton.dart';
import 'package:pw_ecrommarce/view/widgets/custom_title_subtitle.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/images/welcome.png'),
          const  CustomTitleSubtitle(
            title:'Discover Your Dream Job here', 
           subTitle:'Explore all the existing job roles based on your interest and study major'),
           
           
            Row(
              children: [
                Expanded(
                    child: Custombutton(
                  title: 'LogIn',
                  onTap: ()=> Get.to(()=> const LoginScreen()),
                )),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Custombutton(
                  onTap: ()=> Get.to(()=> const RegisterScreen()),
                  title: 'Register',
                  backgroundColor: Colors.transparent,
                  textColor: const Color(0xFF0A0A0A),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
