import 'package:booky/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';


import 'features/splash/presentaion/view/splash_view.dart';


void main() {
  runApp( const BookyApp());
}

class BookyApp extends StatelessWidget
{
  const BookyApp();
  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
      ).copyWith(
          scaffoldBackgroundColor:kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
      ),
       home:  const SplashView(),
    );
  }

}