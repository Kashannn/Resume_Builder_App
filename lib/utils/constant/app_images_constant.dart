import 'package:flutter/material.dart';

class AppImages extends AssetImage {
  const AppImages(super.assetName);
  static const String _assetsPath = 'assets/Images';
  static const String _iconPath = 'assets/IconsSvg';
//PNG images
  static const String splash = '$_assetsPath/splash.png';
  static const String profilePicture = '$_assetsPath/kashan.jpg';



//Svg images
  static const String icons= '$_iconPath/icons.svg';
  static const String instagram = '$_iconPath/Instagram.svg';
  static const String twitter = '$_iconPath/Twitter.svg';


}