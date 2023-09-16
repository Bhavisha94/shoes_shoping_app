import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/screens/order_process.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/button.dart';
import 'package:jorden/widget/divider.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBarWidget.appBar(
          context: context,
          leading: const Icon(Icons.arrow_back_ios_new, size: 15),
          title: Text(
            'SNEAKERS DETAIL',
            style: style.copyWith(fontSize: 24),
          ),
          action: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HELP',
                  style: style.copyWith(
                    fontFamily: 'SFPro',
                  ),
                ),
              ],
            ),
            SizeUtils.horizontalSpacing(
                width: MediaQuery.of(context).size.width * .03)
          ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 96,
                  height: 78,
                  decoration: BoxDecoration(
                      color: ColorUtils.white,
                      borderRadius: BorderRadius.circular(4),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/top2.png'),
                      )),
                ),
                SizeUtils.horizontalSpacing(
                    width: MediaQuery.of(context).size.width * .02),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 175,
                      child: Text(
                        'First Glimpse at the Aleali May x Air Jordan 14 Low',
                        style: style.copyWith(
                            color: ColorUtils.white, fontFamily: 'SFPro'),
                      ),
                    ),
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .005),
                    Container(
                      width: 12,
                      height: 1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: ColorUtils.skyDark),
                    ),
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .01),
                    Text(
                      'Raging Bull White 2021',
                      style: style.copyWith(
                          color: ColorUtils.lightest,
                          fontSize: 12,
                          fontFamily: 'SFPro'),
                    ),
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .015),
                    Row(
                      children: [
                        Text(
                          'SIZE: US 35.5',
                          style: style.copyWith(
                              color: ColorUtils.white,
                              fontFamily: 'SFPro',
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        SizeUtils.horizontalSpacing(
                            width: MediaQuery.of(context).size.width * .02),
                        SvgPicture.asset('assets/images/dot.svg'),
                        SizeUtils.horizontalSpacing(
                            width: MediaQuery.of(context).size.width * .02),
                        Text(
                          'USED',
                          style: style.copyWith(
                              color: ColorUtils.white,
                              fontFamily: 'SFPro',
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            const DividerWidget(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            info('Subtotal', '+\$558'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            info('Processing Fee', '-\$18'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            info('Shipping', '-\$30'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            info('Discount', '0.00'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total (USD)',
                  style: style.copyWith(
                      fontWeight: FontWeight.w600,
                      color: ColorUtils.white,
                      fontFamily: 'SFPro'),
                ),
                Text(
                  '\$510',
                  style: style.copyWith(
                      fontWeight: FontWeight.w600,
                      color: ColorUtils.white,
                      fontFamily: 'SFPro'),
                )
              ],
            ),
            const Spacer(),
            Button(
                text: 'ORDER PROCESS',
                onCallBack: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const OrderProcess()))),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .035),
          ],
        ),
      ),
    );
  }

  Row info(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: style.copyWith(color: ColorUtils.skyDark, fontFamily: 'SFPro'),
        ),
        Text(
          value,
          style: style.copyWith(color: ColorUtils.white, fontFamily: 'SFPro'),
        )
      ],
    );
  }
}
