import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/constant/app_images_constant.dart';

class Template16 extends StatefulWidget {
  const Template16({super.key});

  @override
  State<Template16> createState() => _Template16State();
}

class _Template16State extends State<Template16> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(595, 842));
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 595.w,
          height: 842.h,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: 595.w,
                height: 110.h,
                child: SvgPicture.asset(
                  AppImages.toptemplate16,
                  width: 595.w,
                  height: 110.h,
                  fit: BoxFit.fill,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 280.w,
                    height: 685.h,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 220.r,
                              height: 220.r,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.purple, // Border color
                                  width: 10.r, // Border width
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 100.r,
                              backgroundImage:
                                  AssetImage(AppImages.profilePicture),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 280.w,
                    height: 685.h,
                    color: Colors.red,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
