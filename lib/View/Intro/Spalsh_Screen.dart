import 'package:flutter/material.dart';
import 'package:food_delivery_app/View/Intro/Intro_Screen.dart';
import '../../Utils/Color.dart';

class SpalshView extends StatefulWidget {
  const SpalshView({super.key});

  @override
  State<SpalshView> createState() => _SpalshViewState();
}

class _SpalshViewState extends State<SpalshView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: (() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => IntroView()),
          );
        }),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                AppColor.orange,
                AppColor.red,
              ],
            ),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/Images/logo.png"),
                const SizedBox(
                  width: 20,
                ),
                Image.asset("assets/Images/title.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
