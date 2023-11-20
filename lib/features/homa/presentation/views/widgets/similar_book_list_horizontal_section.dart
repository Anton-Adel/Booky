import 'package:booky/features/homa/presentation/views/widgets/similar_books_list_horizontal.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/styles/styles.dart';

class SimilarBookListHorizontalSection extends StatelessWidget {
  const SimilarBookListHorizontalSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like",
          style: Styles.textStyle16,
        ),
        SizedBox(
          height: 15,
        ),
        SimilarBooksListHorizontal(),
      ],
    );
  }
}
