import 'package:flutter/material.dart';
import '../../Custom_Widget/Back_Arrow.dart';
import '../../Custom_Widget/Custom_Container.dart';
import '../../Utils/Color.dart';
import '../../Utils/Text.dart';

class PasswordView extends StatefulWidget {
  const PasswordView({super.key});

  @override
  State<PasswordView> createState() => _PasswordViewState();
}

class _PasswordViewState extends State<PasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const BackArrowView()),
                const SizedBox(
                  width: 90,
                ),
                Text(
                  "Change Password",
                  style: AppStyle.headText3,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 400,
              color: AppColor.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Current Password",
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "New Password",
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Conform Password",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            const Align(
                alignment: Alignment.center,
                child: CustomContainerView(text: "Update Password")),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
