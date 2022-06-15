import 'package:crypto_app/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dart:async';

import '../data/typography.dart';
import 'bottom_nav_bar.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const NavigationBarScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: CustomColor.klightgreen,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Crypto App",
              style: kLargerTextStyle.copyWith(
                  color: Colors.white, fontWeight: kBoldFontWeight),
            ),
            SizedBox(height: 50.h),
            SpinKitFadingCube(
              color: CustomColor.kwhite,
              duration: const Duration(milliseconds: 900),
            ),
          ]),
        ),
      ),
    );
  }
}
