import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pw_ecrommarce/view/utils/colors.dart';
import 'package:pw_ecrommarce/view/widgets/custom_app_bar.dart';
import 'package:pw_ecrommarce/view/widgets/custom_single_product_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> images = [

      'https://as1.ftcdn.net/v2/jpg/04/65/46/52/1000_F_465465254_1pN9MGrA831idD6zIBL7q8rnZZpUCQTy.jpg',
      'https://as1.ftcdn.net/v2/jpg/04/65/46/52/1000_F_465465254_1pN9MGrA831idD6zIBL7q8rnZZpUCQTy.jpg',
      'https://as1.ftcdn.net/v2/jpg/04/65/46/52/1000_F_465465254_1pN9MGrA831idD6zIBL7q8rnZZpUCQTy.jpg',
    ];

    List<String> categories = [
      'assets/images/watch.png',
      'assets/images/t_shart.png',
      'assets/images/lock.png',
      'assets/images/show.png',
      'assets/images/gluss.png'


    ];

    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [IconButton(onPressed: () {},
         icon: const Icon(Icons.search))],
      ),
      body: Padding(padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
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
        
            SizedBox(height: 10,),
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
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Top Categories',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackColor
                ),),
                Text('See All',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryColor
                ),)
              ],
            ),
            SizedBox(height: 10,),
        
            SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index){
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 80,
                      decoration: BoxDecoration(
                        color: AppColors.catBakground,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black.withOpacity(.1),
                          width: 2.5
                        )
                      ),
                      child: Image.asset(categories[index]),
                    );
        
              }),
            ),
            SizedBox(height: 10,),
        
            GridView.builder(
              shrinkWrap: true,
                itemCount: 8,
                primary: false,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: .9
                ),
                itemBuilder: (_, index){
                  return CustomSingleProductGrid();
                })
          ],
        ),
      ),)
    );
  }
}
