import 'package:flutter/material.dart';
import 'package:jorden/screens/link_social_account.dart';
import 'package:jorden/screens/order_process.dart';
import 'package:jorden/screens/personal_info.dart';
import 'package:jorden/screens/return_address.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/divider.dart';
import 'package:jorden/widget/track_info.dart';

class Sell extends StatefulWidget {
  const Sell({super.key});

  @override
  State<Sell> createState() => _SellState();
}

class _SellState extends State<Sell> {
  int trackIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBarWidget.appBar(
          context: context,
          leading: const Icon(Icons.arrow_back_ios, size: 20),
          title: Text(
            'REQUEST TO SELL',
            style: style.copyWith(fontSize: 24),
          )),
      body: Column(
        children: [
          const DividerWidget(),
          Container(
            height: MediaQuery.of(context).size.height * .3,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  width: 8,
                  child: Column(
                    children: [
                      StepperContainer(trackIndex: trackIndex, index: 0),
                      const StepperLine(),
                      StepperContainer(trackIndex: trackIndex, index: 1),
                      const StepperLine(),
                      StepperContainer(trackIndex: trackIndex, index: 2),
                    ],
                  ),
                ),
                SizeUtils.horizontalSpacing(
                    width: MediaQuery.of(context).size.width * .05),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TranckInfo(
                        index: 0,
                        trackIndex: trackIndex,
                        no: '01.',
                        info: 'Personal Info',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const PersonalInfo(),
                              ));
                        }),
                    TranckInfo(
                        index: 1,
                        trackIndex: trackIndex,
                        no: '02.',
                        info: 'Return Address',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const ReturnAddress(),
                              ));
                        }),
                    TranckInfo(
                        index: 2,
                        trackIndex: trackIndex,
                        no: '03.',
                        info: 'Link Social Account',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const LinkSocialAccount(),
                              ));
                        })
                  ],
                ))
              ],
            ),
          ),
          const Spacer(),
          Image.asset('assets/images/track_bg.png')
        ],
      ),
    );
  }
}
