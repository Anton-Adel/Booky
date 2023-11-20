import 'package:flutter/cupertino.dart';

import 'custom_list_view_image.dart';

class SimilarBooksListHorizontal extends StatelessWidget {
  const SimilarBooksListHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: CustomListViewImage(),
          );
        },
        itemCount: 10,
      ),
    );
    ;
  }
}
