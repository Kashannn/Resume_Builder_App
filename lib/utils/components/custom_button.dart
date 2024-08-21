import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/app_textstyle_constant.dart';

class CustomGradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final IconData? icon;
  final LinearGradient gradient; // New parameter to accept custom gradient

  const CustomGradientButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.icon,
    required this.gradient, // Make gradient required
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 30.w),
        decoration: BoxDecoration(
          gradient: gradient, // Use the passed gradient
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(width: 25.w),
            ],
            Text(
              text,
              style: mStyleWhite18600,
            ),
          ],
        ),
      ),
    );
  }
}
