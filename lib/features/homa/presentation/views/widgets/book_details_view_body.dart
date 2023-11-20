import 'package:booky/core/styles/styles.dart';
import 'package:booky/features/homa/presentation/views/widgets/book_rate.dart';
import 'package:booky/features/homa/presentation/views/widgets/similar_book_list_horizontal_section.dart';
import 'package:booky/features/homa/presentation/views/widgets/similar_books_list_horizontal.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custome_button.dart';
import 'book_details_custom_app_bar.dart';
import 'book_details_section.dart';
import 'books_action.dart';
import 'custom_list_view_image.dart';
import 'feature_list_view_horizontal.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const BookDetailsSection(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .06,
              ),
              const SimilarBookListHorizontalSection(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ))
      ],
    );
  }
}
