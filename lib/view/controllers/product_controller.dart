import 'package:get/get.dart';

class ProductController extends GetxController{

  RxInt selectedIndex = RxInt(0);
  RxString selectedSize = RxString('');

  RxList sizes = [].obs;
}