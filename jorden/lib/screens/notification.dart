import 'package:flutter/material.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/divider.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<String> images = ['top1', 'top2', 'top3', 'top4'];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.bg,
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
              minLeadingWidth: 0,
              title: Text(
                'NOTIFICATION',
                style: style.copyWith(color: ColorUtils.white, fontSize: 24),
              ),
              trailing: Container(
                width: 89,
                height: 32,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: ColorUtils.light,
                    )),
                child: Center(
                  child: Text(
                    'Clear All',
                    style: style.copyWith(
                        color: ColorUtils.skyLighest, fontFamily: 'SFPro'),
                  ),
                ),
              ),
            ),
            const DividerWidget(),
            MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 56,
                            height: 46,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: ColorUtils.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/${images[index]}.png'),
                                    fit: BoxFit.fill)),
                          ),
                          SizeUtils.horizontalSpacing(
                              width: MediaQuery.of(context).size.width * .025),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Parcel Delivered',
                                      style: style.copyWith(
                                        color: ColorUtils.white,
                                        fontFamily: 'SFPro',
                                      ),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: ColorUtils.white,
                                      size: 20,
                                    )
                                  ],
                                ),
                                SizeUtils.verticalSpacing(
                                    height: MediaQuery.of(context).size.height *
                                        .005),
                                Text.rich(TextSpan(
                                    text: 'Parcel ',
                                    style: style.copyWith(
                                        color: ColorUtils.lightest,
                                        fontSize: 12,
                                        fontFamily: 'SFPro'),
                                    children: [
                                      TextSpan(
                                        text: 'Nike Air Jorden ',
                                        style: style.copyWith(
                                            color: ColorUtils.white,
                                            fontSize: 12,
                                            fontFamily: 'SFPro'),
                                      ),
                                      TextSpan(
                                        text: 'for your order ',
                                        style: style.copyWith(
                                            color: ColorUtils.lightest,
                                            fontSize: 12,
                                            fontFamily: 'SFPro'),
                                      ),
                                      TextSpan(
                                        text: '\n213495456 ',
                                        style: style.copyWith(
                                            color: ColorUtils.white,
                                            fontSize: 12,
                                            fontFamily: 'SFPro'),
                                      ),
                                      TextSpan(
                                        text: 'has been delivered.',
                                        style: style.copyWith(
                                            color: ColorUtils.lightest,
                                            fontSize: 12,
                                            fontFamily: 'SFPro'),
                                      ),
                                    ])),
                                SizeUtils.verticalSpacing(
                                    height: MediaQuery.of(context).size.height *
                                        .005),
                                Text(
                                  'Yesterday 18:45',
                                  style: style.copyWith(
                                      color: ColorUtils.inklight,
                                      fontSize: 11,
                                      fontFamily: 'SFPro'),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .015),
                      const DividerWidget(),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .005),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
