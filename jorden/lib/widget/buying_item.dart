import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/divider.dart';

class BuyingProductStatus extends StatelessWidget {
  const BuyingProductStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 98,
                  height: 78,
                  decoration: BoxDecoration(
                      color: ColorUtils.white,
                      borderRadius: BorderRadius.circular(4),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/top2.png'),
                          fit: BoxFit.fill)),
                ),
                SizeUtils.horizontalSpacing(
                    width: MediaQuery.of(context).size.width * .025),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 215,
                        child: Text(
                          'First Glimpse at the Aleali May x Air Jordan 14 Low',
                          style: style.copyWith(
                              color: ColorUtils.white,
                              fontFamily: 'SFPro',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .007),
                      Row(
                        children: [
                          SizedBox(
                            width: 4,
                            height: 4,
                            child: SvgPicture.asset('assets/images/dot.svg'),
                          ),
                          SizeUtils.horizontalSpacing(
                              width: MediaQuery.of(context).size.width * .01),
                          Text(
                            'Raging Bull White / 2021',
                            style: style.copyWith(
                                color: ColorUtils.lightest,
                                fontSize: 12,
                                fontFamily: 'SFPro'),
                          )
                        ],
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .007),
                      Row(
                        children: [
                          SizedBox(
                            width: 4,
                            height: 4,
                            child: SvgPicture.asset('assets/images/dot.svg'),
                          ),
                          SizeUtils.horizontalSpacing(
                              width: MediaQuery.of(context).size.width * .01),
                          Text(
                            'Raging Bull White / 2021',
                            style: style.copyWith(
                                color: ColorUtils.lightest,
                                fontSize: 12,
                                fontFamily: 'SFPro'),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total',
                      style: style.copyWith(
                          color: ColorUtils.lightest,
                          fontSize: 12,
                          fontFamily: 'SFPro'),
                    ),
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .005),
                    Text(
                      '\$365',
                      style: style.copyWith(
                          color: ColorUtils.white,
                          fontFamily: 'SFPro',
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizeUtils.horizontalSpacing(
                    width: MediaQuery.of(context).size.width * .1),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Status',
                      style: style.copyWith(
                          color: ColorUtils.lightest,
                          fontSize: 12,
                          fontFamily: 'SFPro'),
                    ),
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .005),
                    Text(
                      'Waiting Seller',
                      style: style.copyWith(
                          color: ColorUtils.white,
                          fontFamily: 'SFPro',
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                  width: 98,
                  height: 32,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: ColorUtils.light)),
                  child: Center(
                    child: Text(
                      'Details',
                      style: style.copyWith(
                          fontFamily: 'SFPro', color: ColorUtils.skyLighest),
                    ),
                  ),
                )
              ],
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            const DividerWidget(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
          ],
        );
      },
    );
  }
}
