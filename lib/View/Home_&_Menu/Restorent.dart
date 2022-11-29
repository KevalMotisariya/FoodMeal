import 'package:flutter/material.dart';
import 'package:food_delivery_app/Custom_Widget/Back_Arrow.dart';
import 'package:food_delivery_app/Custom_Widget/Fill_Container.dart';
import 'package:food_delivery_app/Json/Hotel/Restorent.dart';
import 'package:food_delivery_app/Utils/Color.dart';
import 'package:food_delivery_app/Utils/Text.dart';
import 'package:food_delivery_app/View/Home_&_Menu/Detail_Screen.dart';
import 'package:food_delivery_app/View/Home_&_Menu/Home_Screen.dart';

class RestorentView extends StatefulWidget {
  const RestorentView({super.key});

  @override
  State<RestorentView> createState() => _RestorentViewState();
}

class _RestorentViewState extends State<RestorentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 70,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
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
                width: 70,
              ),
              Text(
                "Restorent",
                style: AppStyle.headText3.copyWith(fontSize: 30),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const FillContainerView(
            title: "Search here...",
            iconData: Icons.search,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 565,
            child: ListView.builder(
              itemCount: restorent.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detailview(
                            data: index,
                          ),
                        ),
                      );
                    }),
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(10)),
                      height: 150,
                      width: 300,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                            child: Image.network(
                              restorent[index]["image"],
                              height: 150,
                              width: 150,
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
                                  height: 20,
                                ),
                                Text(
                                  restorent[index]["category"],
                                  style: AppStyle.desText,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  restorent[index]["name"],
                                  style: AppStyle.headText3,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "${restorent[index]["location"]}",
                                  style: AppStyle.desText,
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "\n⭐️${restorent[index]["rating"]}",
                            style: AppStyle.desText,
                          ),
                          const SizedBox(
                            width: 20,
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
    );
  }
}
