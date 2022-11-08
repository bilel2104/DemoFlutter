import 'package:get/get.dart';

//class HomeScreenController extends GetxController
class HomeScreenController extends ProductController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}

class ProductController extends GetxController {
  RxBool isFav = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void changeFav() {
    isFav.value = !isFav.value;
  }
}
