// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/list.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';

class StreetStyle extends StatefulWidget {
  const StreetStyle({super.key});

  @override
  State<StreetStyle> createState() => _StreetStyleState();
}

class _StreetStyleState extends State<StreetStyle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBarWidget.appBar(
        context: context,
        leading: const Icon(Icons.close, size: 20),
        title: Text(
          'STREET STYLE',
          style: style.copyWith(fontSize: 24),
        ),
        action: [
          SvgPicture.asset('assets/images/upload.svg'),
          SizeUtils.horizontalSpacing(
              width: MediaQuery.of(context).size.width * .03),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 562,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/street_style.png'),
                      fit: BoxFit.fill)),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '098.',
                        style: style.copyWith(
                            color: ColorUtils.white,
                            fontSize: 48,
                            fontFamily: 'Thedus'),
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorUtils.skylight),
                            shape: BoxShape.circle),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/images/heart.svg',
                            color: ColorUtils.white,
                          ),
                        ),
                      )
                    ]),
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: ColorUtils.white,
                    size: 15,
                  ),
                  Text(
                    '30 LIKES',
                    style:
                        style.copyWith(color: ColorUtils.white, fontSize: 24),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: ColorUtils.white,
                    size: 15,
                  ),
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .1,
              color: ColorUtils.white,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 16,
                    height: 2,
                    color: ColorUtils.inkBase,
                  ),
                  Text(
                    '7 ITEMS',
                    style: style.copyWith(fontSize: 32),
                  )
                ],
              ),
            ),
            Container(
              color: ColorUtils.skyLighter,
              child: GridView.builder(
                itemCount: searchList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    childAspectRatio: .7),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: ColorUtils.skylight)),
                          child: Center(
                            child: SvgPicture.asset('assets/images/heart.svg'),
                          ),
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .015),
                        Image.asset(
                          'assets/images/${searchList[index].image}.png',
                          width: MediaQuery.of(context).size.width,
                          height: 113,
                          fit: BoxFit.fill,
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .005),
                        Text(
                          searchList[index].text,
                          style: style.copyWith(
                              fontFamily: 'SFPro', color: ColorUtils.inkBase),
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .015),
                        Text(
                          'LOWEST ASK',
                          style: style.copyWith(
                              fontFamily: 'SFPro',
                              fontSize: 11,
                              color: ColorUtils.skyDark),
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .005),
                        Row(
                          children: [
                            Text(
                              '\$${calendarList[index].price}',
                              style: style.copyWith(
                                  fontFamily: 'SFPro',
                                  fontWeight: FontWeight.w600,
                                  color: ColorUtils.inkBase),
                            ),
                            SizeUtils.horizontalSpacing(
                                width:
                                    MediaQuery.of(context).size.width * .015),
                            SvgPicture.asset('assets/images/dot.svg'),
                            SizeUtils.horizontalSpacing(
                                width:
                                    MediaQuery.of(context).size.width * .015),
                            Text(searchList[index].time,
                                style: style.copyWith(
                                    fontFamily: 'SFPro',
                                    fontSize: 11,
                                    color: ColorUtils.skyDark))
                          ],
                        )
                      ],
                    ),
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
