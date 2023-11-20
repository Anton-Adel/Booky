import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/styles/styles.dart';

class OnBoardingViewItem extends StatelessWidget {
  const OnBoardingViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 20.0, right: 20, top: 80, bottom: 30),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: AspectRatio(
                  aspectRatio: 6 / 7,
                  child: Lottie.network(
                      'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Test OnBoarding",
                style: Styles.textStyle20.copyWith(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// PageModel OnBoardingItem(){
//   return PageModel(
//     widget: SingleChildScrollView(
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Padding(
//               padding:  EdgeInsets.only(left: 20.0,right: 20,top: 80,bottom: 30),
//               child:  Image(image: AssetImage("assets/images/test_image.png")),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20.0),
//               child: Text("Test OnBoarding",style: Styles.textStyle20.copyWith(fontSize: 30),),
//             )
//           ],
//         ),
//       ),
//     ),
//   );
// }
