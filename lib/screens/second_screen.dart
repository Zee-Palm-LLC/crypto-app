import 'package:crypto_app/data/constants.dart';
import 'package:crypto_app/data/typography.dart';
import 'package:crypto_app/model/container_model.dart';
import 'package:crypto_app/widgets/crpto_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GraphScreen extends StatelessWidget {
  const GraphScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.kwhite,
      child: Scaffold(
          backgroundColor: CustomColor.kwhite,
          body: Column(children: [
            SizedBox(
              height: 40.h, //40
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 10.h,
                horizontal: 22.w,
              ),
              height: 350.h,
              width: 360.w,
              decoration: BoxDecoration(
                color: CustomColor.kcontpink,
                borderRadius: BorderRadius.circular(kbigRadius),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "😃",
                      style: TextStyle(
                        fontSize: 80.sp,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "11,670,90",
                      style: kContainerTextStyle.copyWith(
                          color: CustomColor.kblack,
                          fontWeight: kBoldFontWeight),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text("USD",
                        style: kMediumTextStyle.copyWith(
                            color: CustomColor.kblack,
                            fontWeight: kBoldFontWeight)),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text("\$9839.8",
                        style: kSmallTextStyle.copyWith(
                            color: CustomColor.kblack,
                            fontWeight: kBoldFontWeight)),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      "-8,1%",
                      style: kSmallTextStyle.copyWith(
                          color: CustomColor.klightgreen,
                          fontWeight: kBoldFontWeight),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.w,
            ),
            SizedBox(
              height: 360.h,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.w,
                ),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 10.w,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return CrptoCoinContainer(
                    coincontainer: crptolist[index],
                  );
                },
                itemCount: crptolist.length,
              ),
            ),
          ])),
    );
  }
}
