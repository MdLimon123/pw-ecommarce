import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pw_ecrommarce/view/utils/colors.dart';
import 'package:pw_ecrommarce/view/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> images = [

      'https://as1.ftcdn.net/v2/jpg/04/65/46/52/1000_F_465465254_1pN9MGrA831idD6zIBL7q8rnZZpUCQTy.jpg',
      'https://as1.ftcdn.net/v2/jpg/04/65/46/52/1000_F_465465254_1pN9MGrA831idD6zIBL7q8rnZZpUCQTy.jpg',
      'https://as1.ftcdn.net/v2/jpg/04/65/46/52/1000_F_465465254_1pN9MGrA831idD6zIBL7q8rnZZpUCQTy.jpg',
    ];

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
          ),),

          SizedBox(height: 20,),
          CarouselSlider.builder(
            itemCount: images.length,
            itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: NetworkImage(images[itemIndex]),
                    fit: BoxFit.cover)
                  ),
                ),
            options: CarouselOptions(
              height: 150,
              autoPlay: true,
              enlargeCenterPage: true,
            enlargeFactor: 0.3
            ),
          )
        ],
      ),)
    );
  }
}
