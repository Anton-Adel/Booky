import 'package:booky/core/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../homa/presentation/views/widgets/bset_seller_list_view_item.dart';
import 'custom_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTetField(),
          SizedBox(
            height: 20,
          ),
          Text(
            "Search result",
            style: Styles.textStyle20,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(child: SearchResultList()),
        ],
      ),
    );
  }
}

class SearchResultList extends StatelessWidget {
  const SearchResultList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: BestSellerListViewItem());
      },
      itemCount: 100,
    );
    ;
  }
}
