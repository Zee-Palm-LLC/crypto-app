import 'package:crypto_app/data/constants.dart';
import 'package:crypto_app/data/typography.dart';
import 'package:crypto_app/widgets/crpto_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/account_picture.dart';
import '../widgets/custom_drop_down.dart';
import '../widgets/data_inc_dec_container.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.kwhite,
      child: Scaffold(
          backgroundColor: CustomColor.kwhite,
          body: Column(
            children: [
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.black,
                        )),
                    const Spacer(),
                    const AccountPicture()
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("12.670,90",
                      style:
                          kLargerTextStyle.copyWith(fontWeight: kBoldFontWeight)
                      // style: TextStyle(fontSize: 50.sp, fontWeight: FontWeight.bold),
                      ),
                  RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      "USD",
                      style:
                          kSmallTextStyle.copyWith(fontWeight: kBoldFontWeight),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "9839.8",
                    style: kMediumTextStyle.copyWith(
                        color: CustomColor.klightgreen),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "+8,1%",
                    style: kMediumTextStyle.copyWith(color: CustomColor.kblack),
                  )
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "May 26 - July 26",
                    style: kHeadingStyle.copyWith(fontWeight: kBoldFontWeight),
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  Container(
                    height: 45.h,
                    width: 130.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBRadius),
                        color: CustomColor.kwhite,
                        boxShadow: boxshadow),
                    child: DropDown(
                      dropdownval: ' 1 Month',
                      droplist: [
                        ' 1 Month',
                        ' 2 Month',
                        ' 3 Month',
                        ' 4 Month'
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DataContainer(
                    icon: Icons.arrow_upward,
                    label: 'Increase',
                    rate: 14500,
                    iconcolour: CustomColor.kbullcolor,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  DataContainer(
                    icon: Icons.arrow_downward_sharp,
                    label: 'Decrease',
                    rate: 2730,
                    iconcolour: CustomColor.kbearcolor,
                  ),
                ],
              ),
              MyChartData(),
            ],
          )),
    );
  }
}
