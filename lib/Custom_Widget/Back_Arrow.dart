import 'package:flutter/material.dart';
import 'package:food_delivery_app/Utils/Color.dart';

class BackArrowView extends StatefulWidget {
  const BackArrowView({super.key});

  @override
  State<BackArrowView> createState() => _BackArrowViewState();
}

class _BackArrowViewState extends State<BackArrowView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColor.lightGrey),
      child: const Icon(Icons.arrow_back),
    );
  }
}
