import 'package:flutter/cupertino.dart';

import '../../../../../core/styles/styles.dart';
import 'book_details_custom_app_bar.dart';
import 'book_rate.dart';
import 'books_action.dart';
import 'custom_list_view_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BookDetailsCustomAppBar(),
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            child: const CustomListViewImage()),
        const SizedBox(
          height: 48,
        ),
        Text(
          "Anton Adel Fanous",
          style: Styles.textStyle30.copyWith(),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            "Anton Adel",
            style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.normal, fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const Center(child: BookRate()),
        const SizedBox(
          height: 40,
        ),
        const BooksAction(),
      ],
    );
  }
}
