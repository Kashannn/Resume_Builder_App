import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:cvapp/view/home_screen.dart';
import 'package:cvapp/view/joe_two.dart';
import 'package:cvapp/view/dark_mode_screen.dart';

class BottomNavigationController extends GetxController {
  var selectedIndex = 0.obs;
  final PageController pageController = PageController();

  final List<Widget> screens = [
    const HomeScreen(),
    const JoeTwo(),
    const  DarkScreen(),

  ];

  void changeIndex(int index) {
    selectedIndex.value = index;
    pageController.jumpToPage(index);
  }
}