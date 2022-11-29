import 'package:flutter/material.dart';
import 'package:food_delivery_app/Custom_Widget/Back_Arrow.dart';
import 'package:food_delivery_app/Utils/Text.dart';

class ForgetView extends StatefulWidget {
  const ForgetView({super.key});

  @override
  State<ForgetView> createState() => _ForgetViewState();
}

class _ForgetViewState extends State<ForgetView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const BackArrowView()),
            const SizedBox(
              height: 50,
            ),
            Text("Forget your\nPassword", style: AppStyle.headText1),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Select which contect detail should we use\nto reset you password.",
              style: AppStyle.desText,
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
