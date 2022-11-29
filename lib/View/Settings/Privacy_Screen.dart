import 'package:flutter/material.dart';
import '../../Custom_Widget/Back_Arrow.dart';
import '../../Utils/Color.dart';
import '../../Utils/Text.dart';

class PrivacyView extends StatefulWidget {
  const PrivacyView({super.key});

  @override
  State<PrivacyView> createState() => _PrivacyViewState();
}

class _PrivacyViewState extends State<PrivacyView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.lightGrey),
                child: Icon(
                  Icons.arrow_back,
                  color: AppColor.black,
                ),
              ),
            ),
            const SizedBox(
              width: 90,
            ),
            Text(
              "Privacy",
              style: AppStyle.headText3,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: AppColor.white,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1. Lorem Ipsum is simply dummy.",
                        style: AppStyle.headText3,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "the printing & typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the electronic typesetting, remaining essentially unchanged. It  popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and recently with desktop publishing software like PageMaker including versions of Lorem.",
                        style: AppStyle.desText,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                color: AppColor.white,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "2. Contrary to popular belief.",
                        style: AppStyle.headText3,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc..",
                        style: AppStyle.desText,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                color: AppColor.white,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "3. It is a long established fact.",
                        style: AppStyle.headText3,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "the printing & typesetting industry. Lorem Ipsumhas been the industry's standard dummy textever since the 1500s, when an unknown printertook a galley of type and scrambled it to make a type specimen book. It has survived.",
                        style: AppStyle.desText,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
