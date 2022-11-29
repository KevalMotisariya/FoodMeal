import 'package:flutter/material.dart';
import 'package:food_delivery_app/Custom_Widget/Account_Detail.dart';
import 'package:food_delivery_app/Utils/Color.dart';
import 'package:food_delivery_app/Utils/Text.dart';
import 'package:food_delivery_app/View/Settings/Account_Screen.dart';
import 'package:food_delivery_app/View/Settings/Password_Screen.dart';
import 'package:food_delivery_app/View/Settings/Privacy_Screen.dart';
import 'package:food_delivery_app/View/Settings/Terms_Screen.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/Images/backGround.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text("Profile",
                        style:
                            AppStyle.headText2.copyWith(color: AppColor.black)),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  const CircleAvatar(maxRadius: 80),
                ],
              ),
              Positioned(
                top: 240,
                width: 550,
                child: FloatingActionButton(
                  backgroundColor: AppColor.red,
                  onPressed: () {},
                  child: const Icon(Icons.camera_alt_sharp),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Keval Motisariya",
            style: AppStyle.headText3,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "kevalmotisariya225@gmail.com",
            style: AppStyle.desText.copyWith(color: AppColor.red),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AccountView()));
              }),
              child: const AccountDetailView(
                  iconData: Icons.person, text: "My Account")),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PasswordView(),
                ),
              );
            }),
            child: const AccountDetailView(
                iconData: Icons.lock, text: "Change Password"),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TermsView(),
                ),
              );
            }),
            child: const AccountDetailView(
                iconData: Icons.badge, text: "Terms and Condition"),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PrivacyView(),
                  ),
                );
              }),
              child: const AccountDetailView(
                  iconData: Icons.lock, text: "Privacy")),
          const SizedBox(
            height: 20,
          ),
          const AccountDetailView(
              iconData: Icons.logout_outlined, text: "Log Out"),
        ],
      ),
    );
  }
}
