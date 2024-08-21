import 'package:get/get.dart';
import 'package:cvapp/view/home_screen.dart';
import 'package:cvapp/view/joe_two.dart';
import 'package:cvapp/view/dark_mode_screen.dart';

class BottomNavigationController extends GetxController {
  var selectedIndex = 0.obs;

  void onItemTapped(int index) {
    selectedIndex.value = index;

    if (index == 0) {
      Get.to(() => const HomeScreen());
    } else if (index == 1) {
      Get.to(() => const JoeTwo());
    } else if (index == 2) {
      Get.to(() => const DarkScreen());
    }
  }
}
