import 'package:flutter/material.dart';
import 'package:food_delivery_app/Custom_Widget/Back_Arrow.dart';
import 'package:food_delivery_app/Custom_Widget/Custom_Container.dart';
import 'package:food_delivery_app/Utils/Color.dart';
import 'package:food_delivery_app/Utils/Text.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
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
                    onTap: (() {
                      Navigator.pop(context);
                    }),
                    child: const BackArrowView()),
                const SizedBox(
                  width: 90,
                ),
                Text(
                  "My Account",
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
                        labelText: "Name",
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Phone Number",
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Address",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            const Align(
                alignment: Alignment.center,
                child: CustomContainerView(text: "Edit Profile")),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
