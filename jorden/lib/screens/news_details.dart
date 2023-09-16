// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/divider.dart';

class NewsDetails extends StatefulWidget {
  const NewsDetails({super.key});

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBarWidget.appBar(
        context: context,
        leading: const Icon(Icons.close, size: 20),
        title: Text('POPULAR', style: style.copyWith(fontSize: 24)),
        action: [
          SvgPicture.asset('assets/images/upload.svg'),
          SizeUtils.horizontalSpacing(
              width: MediaQuery.of(context).size.width * .03),
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/images/news1.png'),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                Container(
                  width: 16,
                  height: 2,
                  color: ColorUtils.white,
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                Text(
                  'First Glimpse at the Aleali May x Air Jordan 14 Low',
                  textAlign: TextAlign.center,
                  style: style.copyWith(
                      color: ColorUtils.skyLighest,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'SFPro'),
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .02),
                Text(
                  'Enter the email address associated with your account and we’ll send you a link to reset your password',
                  textAlign: TextAlign.center,
                  style: style.copyWith(
                      color: ColorUtils.lightest, fontFamily: 'SFPro'),
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sneaker',
                      style: style.copyWith(
                          color: ColorUtils.lighter, fontFamily: 'SFPro'),
                    ),
                    SizeUtils.horizontalSpacing(
                        width: MediaQuery.of(context).size.width * .03),
                    SizedBox(
                      width: 4,
                      height: 4,
                      child: SvgPicture.asset(
                        'assets/images/dot.svg',
                        color: ColorUtils.light,
                      ),
                    ),
                    SizeUtils.horizontalSpacing(
                        width: MediaQuery.of(context).size.width * .03),
                    Text(
                      '14 hours ago',
                      style: style.copyWith(
                          color: ColorUtils.lighter, fontFamily: 'SFPro'),
                    )
                  ],
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .02),
                const DividerWidget(),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .02),
                Text(
                  'First Glimpse at the Aleali May x Air Jordan 14 Low',
                  style: style.copyWith(
                      color: ColorUtils.skyLighest, fontFamily: 'SFPro'),
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                Text(
                  'Offspring, one of the UK’s largest sneaker retailers, pissed off a lot of sneakerheads during its release of the AMBUSH x Nike Dunk High. To dissuade winners of the raffle from turning around and selling the sneaker for profit on the resale market, Offspring employees destroyed the shoeboxes and sold the sneakers separately. \n\nSeveral buyers filmed the employees smashing boxes at the cash register and voiced their displeasure on Twitter and Instagram. As retailers continue to find creative ways to ensure sneakers end up in the hands of people who are actually going to wear them, the reactions online sparked an interesting discussion about where retailers’ efforts are best focused.',
                  style: style.copyWith(
                      color: ColorUtils.lightest, fontFamily: 'SFPro'),
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .025),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 229,
                      height: 344,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/trending2.png'),
                              fit: BoxFit.fill)),
                    ),
                    RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        'FANCY. 101',
                        style: style.copyWith(
                            color: ColorUtils.white,
                            fontFamily: 'Thedus',
                            fontSize: 48),
                      ),
                    )
                  ],
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .02),
                Text(
                  'First Glimpse at the Aleali May x Air Jordan 14 Low',
                  style: style.copyWith(
                      color: ColorUtils.skyLighest, fontFamily: 'SFPro'),
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .02),
                text(),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .02),
                Row(
                  children: [
                    Container(
                      width: 156,
                      height: 235,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/trending1.png'),
                              fit: BoxFit.fill)),
                    ),
                    SizeUtils.horizontalSpacing(
                        width: MediaQuery.of(context).size.height * .02),
                    Container(
                      width: 156,
                      height: 235,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/trending2.png'),
                              fit: BoxFit.fill)),
                    )
                  ],
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .02),
                text(),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .02),
                Row(
                  children: [
                    Text(
                      'Tags:',
                      style: style.copyWith(
                          color: ColorUtils.lightest, fontFamily: 'SFPro'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'STOCK',
                      style: style.copyWith(
                          color: ColorUtils.white, fontFamily: 'SFPro'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: 4,
                      height: 4,
                      child: SvgPicture.asset('assets/images/dot.svg'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'JORDEN',
                      style: style.copyWith(
                          color: ColorUtils.white, fontFamily: 'SFPro'),
                    ),
                  ],
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .02),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'YOU MAY ALSO LIKE',
                    style:
                        style.copyWith(color: ColorUtils.white, fontSize: 24),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .2,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    padding: const EdgeInsets.only(left: 15),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NewsDetails())),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Column(
                            children: [
                              Container(
                                width: 156,
                                height: 87,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/latest${index + 1}.png'),
                                        fit: BoxFit.fill)),
                              ),
                              SizeUtils.verticalSpacing(
                                  height: MediaQuery.of(context).size.height *
                                      .015),
                              SizedBox(
                                width: 156,
                                child: Text(
                                  'First Glimpse at the Aleali May x Air Jordan 14 Low',
                                  style: style.copyWith(
                                    color: ColorUtils.skyLighest,
                                    fontFamily: 'SFPro',
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text text() {
    return Text(
      'It’s no secret that mass resellers have a bad reputation in the sneaker community, as people want to get their hands on limited sneakers without having to jump through too many hoops or pay too high a price premium, and resellers make that more difficult. When people or collectives end up getting their hands on a large part of the stock just to turn around and flip all the shoes for a hefty profit (right after posing on Instagram with a wall of hyped sneakers), it’s understandable that people would be pissed off.',
      style: style.copyWith(color: ColorUtils.lightest, fontFamily: 'SFPro'),
    );
  }
}
