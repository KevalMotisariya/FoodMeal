import 'package:flutter/material.dart';
import 'package:food_delivery_app/Utils/Color.dart';
import 'package:food_delivery_app/View/Home_&_Menu/Cart_Screen.dart';
import 'package:food_delivery_app/View/Home_&_Menu/Home_Screen.dart';
import 'package:food_delivery_app/View/Settings/Profile_Screen.dart';
import 'package:food_delivery_app/View/Home_&_Menu/Restorent.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({super.key});

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  int _currentIndex = 0;
  List<Widget> body = [
    const HomeView(),
    const RestorentView(),
    CartView(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.white,
        selectedItemColor: AppColor.red,
        unselectedItemColor: AppColor.lightRed,
        currentIndex: _currentIndex,
        onTap: ((int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        }),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.kitchen), label: 'Restorent'),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
