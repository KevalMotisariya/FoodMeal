import 'package:flutter/material.dart';
import 'package:food_delivery_app/Custom_Widget/Fill_Container.dart';
import 'package:food_delivery_app/Json/Categories.dart';
import 'package:food_delivery_app/Json/Hotel/Chinese_Hotel.dart';
import 'package:food_delivery_app/Utils/Color.dart';
import 'package:food_delivery_app/Utils/Text.dart';
import 'package:food_delivery_app/View/Home_&_Menu/Detail_Screen.dart';
import 'package:food_delivery_app/View/Home_&_Menu/Food.dart';
import 'package:food_delivery_app/View/Home_&_Menu/Restorent.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              Row(
                children: const [
                  Icon(Icons.location_disabled),
                  SizedBox(
                    width: 10,
                  ),
                  Text("San Fransisko, USA"),
                  Spacer(),
                  CircleAvatar(),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Text(
                "560, mongoteri Streat San Dransisko",
                style: AppStyle.desText,
              ),
              const SizedBox(
                height: 20,
              ),
              const FillContainerView(title: "Search", iconData: Icons.search),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [AppColor.red, AppColor.orange]),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Get up To",
                            style: AppStyle.headText3
                                .copyWith(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "15% OFF",
                            style: AppStyle.headText1
                                .copyWith(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Being Order Biggest",
                            style:
                                AppStyle.desText.copyWith(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "discount",
                            style: AppStyle.desText
                                .copyWith(fontSize: 12, color: AppColor.white),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/Images/food.png",
                      height: 200,
                      width: 200,
                    ),
                  ]),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Popular Categories",
                style: AppStyle.headText3,
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 120,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: ((context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FoodView(),
                            ),
                          );
                        },
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: SizedBox(
                                height: 400,
                                width: 150,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      categories[index]["image"],
                                      fit: BoxFit.fill,
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Text(
                                categories[index]["name"],
                                style: AppStyle.boxText,
                              ),
                            ),
                          ],
                        ),
                      );
                    })),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Top Rated Restorent",
                    style: AppStyle.headText3,
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RestorentView()),
                      );
                    }),
                    child: Text(
                      "View All",
                      style: AppStyle.boxText.copyWith(color: AppColor.red),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: chineseRestorent.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Detailview(data: index),
                            ),
                          );
                        },
                        child: Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                child: Image.network(
                                  chineseRestorent[index]["image"],
                                  height: 100,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    chineseRestorent[index]["category"],
                                  ),
                                  const Spacer(),
                                  Text(
                                    "⭐️${chineseRestorent[index]["rating"]}",
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 10),
                                child: Text(
                                  chineseRestorent[index]["name"],
                                  style: AppStyle.boxText
                                      .copyWith(color: AppColor.black),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 5),
                                child: Text(
                                  chineseRestorent[index]["location"],
                                  style: AppStyle.desText
                                      .copyWith(color: AppColor.black),
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
      ),
    );
  }
}
