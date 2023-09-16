import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/screens/sell.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/list.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/divider.dart';

class OwnProduct extends StatefulWidget {
  const OwnProduct({super.key});

  @override
  State<OwnProduct> createState() => _OwnProductState();
}

class _OwnProductState extends State<OwnProduct> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: ownList.length,
      padding: const EdgeInsets.all(15),
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
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/${ownList[index].image}.png'),
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
                SizedBox(
                  width: 52,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Top offer',
                        style: style.copyWith(
                            color: ColorUtils.lightest,
                            fontSize: 12,
                            fontFamily: 'SFPro'),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .005),
                      Text(
                        '\$${ownList[index].topOffer}',
                        style: style.copyWith(
                            color: ColorUtils.white,
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                SizeUtils.horizontalSpacing(
                    width: MediaQuery.of(context).size.width * .05),
                SizedBox(
                  width: 55,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Low price',
                        style: style.copyWith(
                            color: ColorUtils.lightest,
                            fontSize: 12,
                            fontFamily: 'SFPro'),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .005),
                      Text(
                        '\$${ownList[index].lowPrice}',
                        style: style.copyWith(
                            color: ColorUtils.white,
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                SizeUtils.horizontalSpacing(
                    width: MediaQuery.of(context).size.width * .05),
                SizedBox(
                  width: 54,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Last sale',
                        style: style.copyWith(
                            color: ColorUtils.lightest,
                            fontSize: 12,
                            fontFamily: 'SFPro'),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .005),
                      Row(
                        children: [
                          Text(
                            '\$${ownList[index].lastSale}',
                            style: style.copyWith(
                                color: ColorUtils.white,
                                fontFamily: 'SFPro',
                                fontWeight: FontWeight.w600),
                          ),
                          SizeUtils.horizontalSpacing(width: 5),
                          SvgPicture.asset('assets/images/success.svg'),
                        ],
                      )
                    ],
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () => Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const Sell())),
                  child: Container(
                    width: 98,
                    height: 32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: ColorUtils.light)),
                    child: Center(
                      child: Text(
                        'SELL',
                        style: style.copyWith(
                            fontFamily: 'SFPro', color: ColorUtils.skyLighest),
                      ),
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
