import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Custom_Widget/Back_Arrow.dart';
import 'package:food_delivery_app/Utils/Color.dart';
import 'package:food_delivery_app/Utils/Text.dart';
import 'package:food_delivery_app/View/Home_&_Menu/Home_Screen.dart';
import 'package:food_delivery_app/View/cart.dart';

class CartView extends StatefulWidget {
  CartView({
    super.key,
  });
  late Map data;

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    log("message--->${Cart.cartList}");
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                InkWell(
                    onTap: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeView(),
                        ),
                      );
                    }),
                    child: const BackArrowView()),
                const SizedBox(
                  width: 130,
                ),
                Text(
                  "Cart",
                  style: AppStyle.headText2.copyWith(color: AppColor.black),
                ),
              ],
            ),
            SizedBox(
              height: 420,
              child: ListView.builder(
                itemCount: Cart.cartList.length,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 20),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                              child: Image.network(
                                Cart.cartList[index]['image'],
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    Cart.cartList[index]['name'],
                                    style: AppStyle.headText3,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(Cart.cartList[index]['des'],
                                      style: AppStyle.desText),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$ ${Cart.cartList[index]["price"].toString()}",
                                        style: AppStyle.boxText
                                            .copyWith(color: AppColor.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
