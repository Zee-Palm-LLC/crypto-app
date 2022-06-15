import 'package:crypto_app/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FinalScreen extends StatelessWidget {
  const FinalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          body: Center(
              child: Text(
        "3nd page",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50.sp,
            color: CustomColor.kinneryellow),
      ))),
    );
  }
}
