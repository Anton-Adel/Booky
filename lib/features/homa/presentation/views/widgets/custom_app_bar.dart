import 'package:booky/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 25.0,right: 25,top: 40,bottom: 20),
      child: Row(
        children: [
          Image.asset(AssetsManager.splashLogo,height: 24,),

          const Spacer(),
          IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.magnifyingGlass,
          size: 24,
          ))

        ],
      ),
    );
  }
}
