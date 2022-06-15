import 'package:crypto_app/data/constants.dart';
import 'package:crypto_app/data/typography.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DataContainer extends StatelessWidget {
  final IconData icon;
  final String label;
  final double rate;
  final Color iconcolour;
  const DataContainer({
    Key? key,
    required this.icon,
    required this.label,
    required this.rate,
    required this.iconcolour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 30,
            color: iconcolour,
          ),
          SizedBox(
            width: 20.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label,
                  style: kMediumTextStyle.copyWith(color: CustomColor.kgrey)),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "\$$rate",
                style: kHeadingStyle.copyWith(fontWeight: kBoldFontWeight),
              ),
            ],
          )
        ],
      ),
    );
  }
}
