import 'package:flutter/material.dart';
import '../../Json/Food/Food.dart';
import '../../Utils/Color.dart';
import '../../Utils/Text.dart';

class FoodView extends StatefulWidget {
  const FoodView({super.key});

  @override
  State<FoodView> createState() => _FoodViewState();
}

class _FoodViewState extends State<FoodView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: food.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(10)),
              height: 150,
              width: 300,
              child: Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      child: Image.network(
                        food[index]["image"],
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
                          Text(food[index]["name"],
                              style: AppStyle.headText3,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("${food[index]["des"]}",
                              style: AppStyle.desText,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$ ${food[index]["price"].toString()}",
                                style: AppStyle.headText2
                                    .copyWith(color: AppColor.black),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.add)),
                            ],
                          ),
                        ],
                      ),
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
    );
  }
}
