import 'package:flutter/material.dart';
import 'package:food_delivery_app/Custom_Widget/Back_Arrow.dart';
import 'package:food_delivery_app/Custom_Widget/Custom_Container.dart';
import 'package:food_delivery_app/Custom_Widget/Fill_Container.dart';
import 'package:food_delivery_app/Utils/Color.dart';
import 'package:food_delivery_app/Utils/Text.dart';
import 'package:food_delivery_app/View/Home_&_Menu/Bottom_Bar.dart';
import 'package:food_delivery_app/View/Sign_In_&_Sign_Up/Forget_Screen.dart';
import 'package:get/get.dart';
import '../Controller/Login_Controller.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  bool isLogin = false;
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            InkWell(
                onTap: (() {
                  Navigator.pop(context);
                }),
                child: const BackArrowView()),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Log In to your\nAccount",
              style: AppStyle.headText1,
            ),
            const SizedBox(
              height: 50,
            ),
            const FillContainerView(title: "Email", iconData: Icons.email),
            const SizedBox(
              height: 20,
            ),
            const FillContainerView(title: "Password", iconData: Icons.lock),
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgetView()));
                },
                child: Text(
                  "Forget Password",
                  style: AppStyle.boxText.copyWith(color: AppColor.orange),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "or connect with social media",
                style: AppStyle.desText,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            BuildLoginButton(),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 50),
              child: InkWell(
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const BottomBarView()),
                        ));
                  }),
                  child: const CustomContainerView(text: "Log In")),
            ),
          ],
        ),
      ),
    );
  }

  MoveNext() {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const BottomBarView()),
    );
  }

  Row BuildLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () async {
            var responce = await controller.login();
            print(responce);
          },
          child: Image.asset(
            'assets/Images/google.png',
            height: 50,
            width: 50,
          ),
        ),
        Image.asset(
          'assets/Images/facebook.png',
          height: 50,
          width: 50,
        ),
      ],
    );
  }
}
