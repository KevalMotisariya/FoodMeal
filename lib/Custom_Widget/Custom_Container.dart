import 'package:flutter/material.dart';
import 'package:food_delivery_app/Utils/Color.dart';

import '../Utils/Text.dart';

class CustomContainerView extends StatelessWidget {
  final String text;
  const CustomContainerView({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [AppColor.orange, AppColor.red])),
      child: Text(
        text,
        style: AppStyle.boxText,
      ),
    );
  }
}
