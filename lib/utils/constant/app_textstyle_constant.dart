import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

///////////////----------------Fonts----------------////////////////
//poppins
final TextStyle mStyleBlack12600 = GoogleFonts.montserrat(
  fontSize: 12.sp,
  color: AppColors.blackColor,
  fontWeight: FontWeight.w600,
);
final TextStyle mStyleBlack18600 = GoogleFonts.montserrat(
  fontSize: 18.sp,
  color: AppColors.blackColor,
  fontWeight: FontWeight.w600,
);
final TextStyle mStyleBlack16600 = GoogleFonts.montserrat(
  fontSize: 16.sp,
  color: AppColors.blackColor,
  fontWeight: FontWeight.w600,
);
final TextStyle mStyleBlack20600 = GoogleFonts.montserrat(
  fontSize: 20.sp,
  color: AppColors.blackColor,
  fontWeight: FontWeight.w600,
);

final TextStyle mStyleWhite16600 = GoogleFonts.montserrat(
  fontSize: 16.sp,
  color: AppColors.whiteColor,
  fontWeight: FontWeight.w600,
);
final TextStyle mStyleWhite12600 = GoogleFonts.montserrat(
  fontSize: 12.sp,
  color: AppColors.whiteColor,
  fontWeight: FontWeight.w600,
);
final TextStyle mStyleWhite18600 = GoogleFonts.montserrat(
  fontSize: 18.sp,
  color: AppColors.whiteColor,
  fontWeight: FontWeight.w600,
);
final TextStyle mStyleWhite20600 = GoogleFonts.montserrat(
  fontSize: 20.sp,
  color: AppColors.whiteColor,
  fontWeight: FontWeight.w600,
);
final TextStyle mStyleWhite22500 = GoogleFonts.montserrat(
  fontSize: 22.sp,
  color: AppColors.whiteColor,
  fontWeight: FontWeight.w500,
);
final TextStyle mStyleWhite6300 = GoogleFonts.montserrat(
  fontSize: 6.sp,
  color: AppColors.whiteColor,
  fontWeight: FontWeight.w300,
);


final TextStyle oStyleWhite5400 = GoogleFonts.openSans(
  fontSize: 5.sp,
  color: AppColors.profileColor,
  fontWeight: FontWeight.w500,
);




class AppTextStyles {
  static const TextStyle header = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: AppColors.darkGray,
  );

  static const TextStyle subHeader = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: AppColors.darkBlue,
  );

  static const TextStyle bodyText = TextStyle(
    fontSize: 14.0,
    color: AppColors.darkGray,
  );

  static const TextStyle lightText = TextStyle(
    fontSize: 14.0,
    color: AppColors.white,
  );
}


class AppTextStylesTemplate10 {
  static final TextStyle nameStyle = TextStyle(
    color: AppColorsTemplate10.primary,
    fontSize: 15.0.sp,
    fontFamily: GoogleFonts.manrope().fontFamily,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle jobTitleStyle = TextStyle(
    color: AppColorsTemplate10.secondary,
    fontSize: 10.0.sp,
    fontFamily: GoogleFonts.manrope().fontFamily,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle contactLabelStyle = TextStyle(
    color: AppColorsTemplate10.contactText,
    fontSize: 8.0.sp,
    fontFamily: GoogleFonts.manrope().fontFamily,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle contactInfoStyle = TextStyle(
    color: AppColorsTemplate10.contactText,
    fontSize: 8.0.sp,
    fontFamily: GoogleFonts.manrope().fontFamily,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle sectionTitleStyle = TextStyle(
    color: AppColorsTemplate10.primary,
    fontSize: 10.0.sp,
    fontFamily: GoogleFonts.manrope().fontFamily,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle experienceTitleStyle = TextStyle(
    color: AppColorsTemplate10.contactText,
    fontSize: 9.0.sp,
    fontFamily: GoogleFonts.manrope().fontFamily,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle experienceDurationStyle = TextStyle(
    color: AppColorsTemplate10.secondary,
    fontSize: 9.0.sp,
    fontFamily: GoogleFonts.manrope().fontFamily,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle descriptionTextStyle = TextStyle(
    color: AppColorsTemplate10.secondary,
    fontSize: 8.0.sp,
    fontFamily: GoogleFonts.manrope().fontFamily,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle educationTextStyle = TextStyle(
    color: AppColorsTemplate10.secondary,
    fontSize: 9.0.sp,
    fontFamily: GoogleFonts.manrope().fontFamily,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle degreeTextStyle = TextStyle(
    color: AppColorsTemplate10.contactText,
    fontSize: 9.0.sp,
    fontFamily: GoogleFonts.manrope().fontFamily,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle skillTextStyle = TextStyle(
    color: AppColorsTemplate10.secondary,
    fontSize: 7.0.sp,
    fontFamily: GoogleFonts.manrope().fontFamily,
    fontWeight: FontWeight.w500,
  );
}