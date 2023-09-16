// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/screens/news_details.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/divider.dart';
import 'package:jorden/widget/latest_news.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  List<String> tabs = ['Lastest', 'Popular', 'Rising', 'Sneakers', 'Hypebeast'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .01),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'POPULAR',
                      style:
                          style.copyWith(fontSize: 18, color: ColorUtils.white),
                    ),
                    SvgPicture.asset('assets/images/search_small.svg')
                  ],
                ),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .02),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NewsDetails())),
                child: Image.asset(
                  'assets/images/glimpse.png',
                  width: MediaQuery.of(context).size.width * .85,
                  height: 184,
                  fit: BoxFit.fill,
                ),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .02),
              SizedBox(
                width: MediaQuery.of(context).size.width * .9,
                child: Text(
                  'First Glimpse at the Aleali May x Air Jordan 14 Low',
                  style: style.copyWith(
                      color: ColorUtils.white,
                      fontFamily: 'SFPro',
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
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
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              const DividerWidget(),
              TabBar(
                tabs: tabs
                    .map((e) => Tab(
                          text: e,
                        ))
                    .toList(),
                isScrollable: true,
                physics: const NeverScrollableScrollPhysics(),
                unselectedLabelColor: ColorUtils.lightest,
                labelColor: ColorUtils.white,
                labelStyle: style.copyWith(fontFamily: 'SFPro'),
                unselectedLabelStyle: style.copyWith(fontFamily: 'SFPro'),
                padding: EdgeInsets.zero,
                indicatorColor: ColorUtils.white,
                indicatorSize: TabBarIndicatorSize.label,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .92,
                child: const TabBarView(children: [
                  LatestNews(),
                  LatestNews(),
                  LatestNews(),
                  LatestNews(),
                  LatestNews()
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
