import 'package:flutter/material.dart';
import 'package:food_delivery_app/Utils/Color.dart';

class AppStyle {
  static TextStyle headText1 = TextStyle(
    color: AppColor.black,
    fontSize: 38,
    fontWeight: FontWeight.w700,
  );
  static TextStyle headText2 = TextStyle(
      fontSize: 20, color: AppColor.white, fontWeight: FontWeight.bold);
  static TextStyle headText3 = TextStyle(
      fontSize: 18, color: AppColor.black, fontWeight: FontWeight.w600);
  static TextStyle desText = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: AppColor.black45);
  static TextStyle boxText = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w700, color: AppColor.white);
  static TextStyle categoryText = TextStyle(
      fontSize: 10, fontWeight: FontWeight.w400, color: AppColor.black45);
  static TextStyle itemText = TextStyle(
      fontSize: 11, fontWeight: FontWeight.w400, color: AppColor.white);
}
