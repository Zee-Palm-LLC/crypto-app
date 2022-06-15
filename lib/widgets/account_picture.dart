import 'package:crypto_app/data/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/constants.dart';

class AccountPicture extends StatelessWidget {
  const AccountPicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kProfileRadius),
        boxShadow: boxshadow,
        color: Colors.white,
      ),
      child: Container(
        margin: const EdgeInsets.all(4),
        height: 10.h,
        width: 10.w,
        decoration: BoxDecoration(
          boxShadow: boxshadow = [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(1, 1), // changes position of shadow
            )
          ],
          borderRadius: BorderRadius.circular(kProfileRadius),
          color: Colors.grey,
        ),
      ),
    );
  }
}
