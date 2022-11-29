import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Custom_Widget/Back_Arrow.dart';
import 'package:food_delivery_app/Json/Food/Chinese_Food.dart';
import 'package:food_delivery_app/Json/Hotel/Restorent.dart';
import 'package:food_delivery_app/Utils/Color.dart';
import 'package:food_delivery_app/Utils/Text.dart';
import 'package:food_delivery_app/View/Home_&_Menu/Cart_Screen.dart';
import 'package:food_delivery_app/View/cart.dart';
import '../../Json/Food/Food.dart';

class Detailview extends StatefulWidget {
  Detailview({super.key, required this.data});

  int data;
  @override
  State<Detailview> createState() => _DetailviewState();
}

class _DetailviewState extends State<Detailview> {
  @override
  void initState() {
    super.initState();
    log(widget.data.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            child: Stack(
              children: [
                Image.network(
                  restorent[widget.data]["image"],
                  height: 350,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                        AppColor.black.withOpacity(0.5),
                        AppColor.black.withOpacity(0.1),
                      ])),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      InkWell(
                          onTap: (() {
                            Navigator.pop(context);
                          }),
                          child: const BackArrowView()),
                      const SizedBox(height: 120),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            restorent[widget.data]["name"],
                            style: AppStyle.headText2,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColor.green),
                              child: Text(
                                "⭐️${restorent[widget.data]["rating"]}",
                                style: AppStyle.boxText,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_rounded,
                            color: AppColor.white,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            restorent[widget.data]["location"],
                            style: AppStyle.boxText,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        restorent[widget.data]["category"],
                        style: AppStyle.boxText,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30, bottom: 20),
            child: Text(
              "Best Food",
              style: AppStyle.headText2.copyWith(color: AppColor.black),
            ),
          ),
          SizedBox(
            height: 420,
            child: ListView.builder(
              itemCount: chinese.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 20),
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
                            food[index]["image"],
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
                                food[index]["name"],
                                style: AppStyle.headText3,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(food[index]["des"], style: AppStyle.desText),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$ ${food[index]["price"].toString()}",
                                    style: AppStyle.boxText
                                        .copyWith(color: AppColor.black),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: IconButton(
                                      splashRadius: 1,
                                      onPressed: () {
                                        Cart().addtoCart(food[index]);
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
