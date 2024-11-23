import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pw_ecrommarce/view/details/details_screen.dart';
import 'package:pw_ecrommarce/view/utils/colors.dart';

class CustomSingleProductGrid extends StatelessWidget {
  const CustomSingleProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(()=> ProductDetailsScreen());
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.catBakground,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/product1.png'),
                Text('Redmi Note 4',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor.withOpacity(.7)
                  ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$500',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          color: AppColors.blackColor

                      ),),
                    Text('\$550',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFAFAFAF),
                          decoration: TextDecoration.lineThrough
                      ),)
                  ],
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 20,
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60)
                  ),
                  child: Center(
                    child: Text('50% OFF',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackColor.withOpacity(.7)
                    ),),
                  ),
                ),

                  Container(
                    height: 30,
                     width: 30,
                     decoration: BoxDecoration(
                       border: Border.all(
                         color: AppColors.blackColor.withOpacity(.5)
                       ),
                       shape: BoxShape.circle
                     ),
                     child: Icon(Icons.favorite_border),
                   )
              ],
            )
          ],
        ),
      ),
    );
  }
}
