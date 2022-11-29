import 'package:flutter/material.dart';
import 'package:food_delivery_app/Utils/Text.dart';

class PageView2 extends StatelessWidget {
  const PageView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Image.asset(
          'assets/Images/pageView2.png',
          fit: BoxFit.cover,
        )),
        const SizedBox(
          height: 50,
        ),
        Text(
          "Easy Payment",
          style: AppStyle.headText1,
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          "Lorem Ipsum is simply dummy text of the\n\t\t\t\t\t\t\tprinting and typesetting industry",
          style: AppStyle.desText,
        ),
      ],
    );
  }
}
