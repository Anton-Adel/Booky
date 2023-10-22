import 'package:flutter/cupertino.dart';

import 'custom_list_view_image.dart';

class CustomListViewHorizontal extends StatelessWidget {
  const CustomListViewHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding:  EdgeInsets.only(right: 15.0),
            child: CustomListViewImage(),
          );
        },
        itemCount: 10,
      ),
    );
  }
}