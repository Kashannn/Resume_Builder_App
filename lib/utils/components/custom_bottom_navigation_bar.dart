import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;

  CustomBottomNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: 88.h,
      width: 338.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(110.r),
        ),
        gradient: theme.brightness == Brightness.dark
            ? LinearGradient(
          colors: [
            Color(0xFF171717),
            Color(0xFF2D2D2D),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        )
            : null,
        color: theme.brightness == Brightness.dark
            ? null
            : Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildNavItem(Icons.home, 0, theme),
          _buildNavItem(Icons.bookmark_border, 1, theme),
          _buildNavItem(Icons.settings, 2, theme),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index, ThemeData theme) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () => onTap(index),
      child: Container(
        decoration: isSelected
            ? BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF5BBBFF),
              Color(0xFF005592),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20.0),
        )
            : null,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.w),
        child: Icon(
          icon,
          size: 40.0,
          color: isSelected
              ? Colors.white
              : theme.brightness == Brightness.dark
              ? Colors.blue.shade300
              : Colors.blue.shade200,
        ),
      ),
    );
  }
}

