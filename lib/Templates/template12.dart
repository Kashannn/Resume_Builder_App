import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constant/app_images_constant.dart';

class Template12 extends StatefulWidget {
  const Template12({super.key});

  @override
  State<Template12> createState() => _Template12State();
}

class _Template12State extends State<Template12> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(596, 842));
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 596.w,
          height: 842.h,
          child: Column(
            children: [
              SizedBox(
                height: 184.h,
                width: 596.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 184.h,
                      width: 225.w,
                      decoration: const BoxDecoration(
                        color: Color(0xFF1E2837),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                  ),
                                  child: Image(
                                    image: AssetImage(AppImages.profilePicture),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 184.h,
                      width: 360.w,
                      decoration: const BoxDecoration(
                        color: Color(0xFF1E2837),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'ELIZABETH HARRIS',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 21.sp,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    SizedBox(height: 8.h),
                                    Text(
                                      'WEB DESIGNER & DEVELOPER',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11.sp,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
