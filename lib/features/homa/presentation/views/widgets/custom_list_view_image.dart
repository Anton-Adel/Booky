import 'package:flutter/material.dart';

class CustomListViewImage extends StatelessWidget {
  const CustomListViewImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://media.istockphoto.com/id/458017717/vector/king-lion-aslan.jpg?s=2048x2048&w=is&k=20&c=vb7Qydu-wja1PNaQteVKqcmiWIblcaZyFZhcEd5tBcI="))),
      ),
    );
  }
}
