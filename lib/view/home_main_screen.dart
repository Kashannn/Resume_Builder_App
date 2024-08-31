import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/components/custom_bottom_navigation_bar.dart';
import '../Allcontrollers/bottom_navigation_bar_controller.dart';

class AdminMainScreen extends StatelessWidget {
  final BottomNavigationController bottomNavController =
      Get.put(BottomNavigationController());
  AdminMainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: bottomNavController.pageController,
                onPageChanged: (index) {
                  bottomNavController.changeIndex(index);
                },
                children: bottomNavController.screens,
              ),
            ),
          ],
        ),
        bottomNavigationBar: Obx(() {
          return CustomBottomNavigationBar(
            selectedIndex: bottomNavController.selectedIndex.value,
            onTap: (index) {
              bottomNavController.changeIndex(index);
            },
          );
        }),
      ),
    );
  }
}
