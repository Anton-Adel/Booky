import 'dart:async';

import 'package:booky/constants.dart';
import 'package:booky/core/utils/assets.dart';
import 'package:booky/features/homa/presentation/views/home_view.dart';
import 'package:booky/features/splash/presentaion/view/widgets/slider_transation.dart';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animatedContainer;

  late Animation<Offset> animation;

  @override
  void initState() {


    super.initState();

    slideAnimation();
    geToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animatedContainer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsManager.splashLogo),
        const SizedBox(
          height: 4,
        ),
        SlideBuild(animation: animation)
      ],
    );
  }

  void slideAnimation()
  {
    animatedContainer =
        AnimationController(vsync: this, duration: kTranstionDuration);
    animation = Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
        .animate(animatedContainer);
    animatedContainer.forward();
  }

  void geToHome(){

    Timer timer;
    timer=Timer(const Duration(seconds: 2), () {
      Get.to(()=>const HomeView(),transition: Transition.leftToRight,duration: const Duration(milliseconds: 250));
    });
  }
}
