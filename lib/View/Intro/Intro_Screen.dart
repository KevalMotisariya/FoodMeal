import 'package:flutter/material.dart';
import 'package:food_delivery_app/Custom_Widget/Custom_Container.dart';
import 'package:food_delivery_app/Utils/Color.dart';
import 'package:food_delivery_app/View/Sign_In_&_Sign_Up/LogIn_Screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'Page_View/Page_View_1.dart';
import 'Page_View/Page_View_2.dart';
import 'Page_View/Page_View_3.dart';

class IntroView extends StatefulWidget {
  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  final List<Widget> _list = [
    const PageView1(),
    const PageView2(),
    const PageView3(),
  ];
  int index = 0;

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (value) {
                  setState(() {
                    index = value;
                  });
                },
                children: _list,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: AppColor.red,
                dotColor: AppColor.lightRed,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                if (_controller.page!.round() < _list.length - 1) {
                  _controller.animateToPage(
                    _controller.page!.round() + 1,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LogInView(),
                    ),
                  );
                }
              },
              child: CustomContainerView(
                text: (index == 2) ? "Get Started" : "Next",
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ));
  }
}
