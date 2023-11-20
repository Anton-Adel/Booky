import 'package:booky/core/styles/styles.dart';
import 'package:booky/features/onboarding/presentation/view/widegts/onBoarding_view_item.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../constants.dart';

class OnBoardingViewBody extends StatefulWidget {
  OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController pageController = PageController();

  int current_index = 0;

  List<Widget> onBoardingList = [
    const OnBoardingViewItem(),
    const OnBoardingViewItem(),
    const OnBoardingViewItem(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        onPageChanged: (value) {
          setState(() {
            current_index = value;
          });
        },
        controller: pageController,
        itemBuilder: (context, index) =>
            onBoardingList[current_index % onBoardingList.length],
      ),
      bottomSheet: Container(
        color: kPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SmoothPageIndicator(
                controller: pageController,
                count: 3,
                onDotClicked: (index) {
                  print("Anton");
                  pageController.animateToPage(index,
                      duration: Duration(milliseconds: 100),
                      curve: Curves.bounceInOut);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
