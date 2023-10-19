import 'package:booky/core/styles/styles.dart';
import 'package:booky/core/utils/assets.dart';
import 'package:booky/features/homa/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'custom_list_view_image.dart';
import 'feature_list_view_horizontal.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [CustomAppBar(),
        CustomListViewHorizontal(),
       SizedBox(
        height: 50,
      ),
       Padding(
         padding: EdgeInsets.all(20.0),
         child: Text("Best seller",style: Styles.titleMedium,),
       )
      ],
    );
  }
}


