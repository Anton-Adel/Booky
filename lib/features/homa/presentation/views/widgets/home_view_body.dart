import 'package:booky/constants.dart';
import 'package:booky/core/styles/styles.dart';
import 'package:booky/core/utils/assets.dart';
import 'package:booky/features/homa/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'bset_seller_list_view_item.dart';
import 'custom_list_view_image.dart';
import 'feature_list_view_horizontal.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              CustomListViewHorizontal(),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Best seller",
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        )
      ],
    );

    // return const Padding(
    //   padding: EdgeInsets.symmetric(horizontal: 30.0),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       CustomAppBar(),
    //       CustomListViewHorizontal(),
    //       SizedBox(
    //         height: 40,
    //       ),
    //       Text(
    //         "Best seller",
    //         style: Styles.textStyle18,
    //       ),
    //       SizedBox(
    //         height: 20,
    //       ),
    //       BestSellerListView()
    //     ],
    //   ),
    // );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: BestSellerListViewItem());
      },
      itemCount: 100,
    );
  }
}
