import 'package:flutter/material.dart';
import 'package:food_delivery_app/Utils/Text.dart';

class FillContainerView extends StatelessWidget {
  final String title;
  final IconData iconData;
  const FillContainerView(
      {super.key, required this.title, required this.iconData});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 380,
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          hintText: title,
          hintStyle: AppStyle.desText,
          prefixIcon: Icon(
            iconData,
          ),
        ),
      ),
    );
  }
}
