import 'package:flutter/material.dart';

class SlideBuild extends StatelessWidget {

  final Animation<Offset> animation;
  const SlideBuild({Key? key, required this.animation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation:animation ,
        builder: (context,_) {
          return SlideTransition(
              position: animation,
              child: const Text("Read free books",textAlign: TextAlign.center,));
        }
    );
  }
}
