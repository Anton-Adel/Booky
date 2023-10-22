import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/styles/styles.dart';

class BookRate extends StatelessWidget {
  const BookRate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Icon(FontAwesomeIcons.solidStar,color: Colors.amber,),
        const SizedBox(
          width: 6.3,
        ),
        const   Text("4.9",style: Styles.textStyle16,),
        const   SizedBox(
          width: 5,
        ),
        Text("(2365)",style: Styles.textStyle14.copyWith(color: Colors.grey),)
      ],
    );
  }
}
