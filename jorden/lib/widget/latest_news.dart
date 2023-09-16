// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/screens/news_details.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';

class LatestNews extends StatelessWidget {
  const LatestNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .015),
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
                          height: MediaQuery.of(context).size.height * .015),
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
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .015),
        InkWell(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NewsDetails())),
          child: Container(
            width: MediaQuery.of(context).size.width * .9,
            height: 184,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/news1.png'),
                    fit: BoxFit.fill)),
          ),
        ),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .015),
        text(context),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .015),
        details(context),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .015),
        InkWell(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NewsDetails())),
          child: Container(
            width: MediaQuery.of(context).size.width * .9,
            height: 184,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/news2.png'),
                    fit: BoxFit.fill)),
          ),
        ),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .015),
        text(context),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .015),
        details(context),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .015),
      ],
    );
  }

  Padding details(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            'Sneaker',
            style:
                style.copyWith(color: ColorUtils.lighter, fontFamily: 'SFPro'),
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
            style:
                style.copyWith(color: ColorUtils.lighter, fontFamily: 'SFPro'),
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
            '15 Comments',
            style:
                style.copyWith(color: ColorUtils.lighter, fontFamily: 'SFPro'),
          ),
          const Spacer(),
          SvgPicture.asset('assets/images/bookmark.svg')
        ],
      ),
    );
  }

  SizedBox text(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .9,
      child: Text(
        'First Glimpse at the Aleali May x Air Jordan 14 Low',
        style: style.copyWith(
            color: ColorUtils.skyLighest, fontSize: 16, fontFamily: 'SFPro'),
      ),
    );
  }
}
