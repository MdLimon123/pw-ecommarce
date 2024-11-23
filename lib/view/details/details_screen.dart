import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pw_ecrommarce/view/controllers/product_controller.dart';
import 'package:pw_ecrommarce/view/utils/colors.dart';
import 'package:pw_ecrommarce/view/widgets/customButton.dart';
import 'package:pw_ecrommarce/view/widgets/custom_app_bar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productController = Get.put(ProductController());
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      extendBody: true,
      appBar: CustomAppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: size.height * .4,
                    color: AppColors.catBakground,
                    padding: EdgeInsets.all(30),
                    child: Center(child: Image.asset('assets/images/product1.png')),
                  ),
              
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Apple Watch Series 6',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.blackColor.withOpacity(.7)
                      ),),
                  ),
                  SizedBox(height: 5,),
                  RatingBar.builder(
                    initialRating: 5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
              
                    },
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$500',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: AppColors.blackColor
              
                          ),),
                        Text('Available in stock',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.blackColor,
              
                          ),)
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('About',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackColor
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("The upgraded S6 SiP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blackColor.withOpacity(.7)
                    ),),
                  ),
              
                ],
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      primary: false,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index){
                        return Obx(
                            ()=> InkWell(
                            onTap: (){
                              productController.selectedIndex.value = index;
                            },
                            child: Container(
                              width: 40,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  color: productController.selectedIndex.value == index?
                                  AppColors.primaryColor: null,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: AppColors.blackColor.withOpacity(.1)
                                  )
                              ),
                              child: Center(
                                child: Text('45',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: productController.selectedIndex.value == index ? Colors.white: AppColors.blackColor
                                ),),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              SizedBox(height: 15,),
                Custombutton(title: 'Add to cart')
              ],
            ),
          ),
        ],

      ),
    );
  }
}
