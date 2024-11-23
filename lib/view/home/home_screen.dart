import 'package:flutter/material.dart';
import 'package:pw_ecrommarce/view/utils/colors.dart';
import 'package:pw_ecrommarce/view/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [IconButton(onPressed: () {},
         icon: const Icon(Icons.search))],
      ),
      body: Padding(padding: const EdgeInsets.all(15),
      child: Column(
    
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hello Fola 👋',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.blackColor
          ),),
         const  SizedBox(height: 10,),
          Text('Let’s start shopping!',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: AppColors.blackColor.withOpacity(.5)
          ),)
        ],
      ),)
    );
  }
}
