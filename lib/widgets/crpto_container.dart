import 'package:crypto_app/data/constants.dart';
import 'package:crypto_app/data/typography.dart';
import 'package:crypto_app/model/container_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/Splinegraph.dart';

class CrptoCoinContainer extends StatelessWidget {
  final CryptoContainer coincontainer;
  const CrptoCoinContainer({
    Key? key,
    required this.coincontainer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330.h,
      width: 200.w,
      decoration: BoxDecoration(
        color: coincontainer.backcolor,
        borderRadius: BorderRadius.circular(kContCrpRadius),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 30.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.h,
            ),
            Container(
              height: 30.h,
              width: 30.w,
              decoration: BoxDecoration(
                color: coincontainer.fontcolor, //.klightgreen,
                borderRadius: BorderRadius.circular(kBRadius),
              ),
              child: Center(
                child: Text(
                  coincontainer.tag,
                  style: kVerySmallTextStyle.copyWith(
                      color: coincontainer.backcolor),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              coincontainer.coinname,
              style: kContainerTextStyle.copyWith(
                color: CustomColor.kblack,
                fontWeight: kBoldFontWeight,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              coincontainer.cointag,
              style: kMediumTextStyle.copyWith(color: CustomColor.kblack),
            ),
            Splinegraph(
              iconcolor: coincontainer.fontcolor,
              cdata: coincontainer.chdata,
            ),
            Text(
              "\$${coincontainer.coinvalue}",
              style: kVeryTextStyle.copyWith(
                  fontWeight: kBoldFontWeight, color: coincontainer.fontcolor),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              "   ${coincontainer.coinrate}",
              style: kSmallTextStyle.copyWith(color: coincontainer.fontcolor),
            ),
          ],
        ),
      ),
    );
  }
}
