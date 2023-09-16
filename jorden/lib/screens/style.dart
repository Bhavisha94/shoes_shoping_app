import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/screens/street_style.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/next_btn.dart';
import 'package:jorden/widget/see_all.dart';

class Style extends StatelessWidget {
  const Style({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            // SizeUtils.verticalSpacing(
            //     height: MediaQuery.of(context).size.height * .015),
            Container(
              width: MediaQuery.of(context).size.width * .9,
              height: 490,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/featured.png'),
                    fit: BoxFit.fill,
                  )),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'FEATURED',
                    style:
                        style.copyWith(color: ColorUtils.white, fontSize: 32),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 146,
                        child: Text(
                          'Nike LookBook SG//01 Tomorrow Is Fine.',
                          style: style.copyWith(
                              fontFamily: 'SFPro', color: ColorUtils.white),
                        ),
                      ),
                      const NextBtn(
                        width: 40,
                        height: 40,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'STREET STYLE',
                    style:
                        style.copyWith(color: ColorUtils.white, fontSize: 32),
                  ),
                  SeeAll(
                    color: ColorUtils.lightest,
                    onCallBack: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const StreetStyle())),
                  )
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 345,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset(
                    'assets/images/fancy1.png',
                    height: 344,
                    width: 229,
                    fit: BoxFit.fill,
                  ),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .025),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'TECH',
                        style: style.copyWith(
                            color: ColorUtils.white,
                            fontSize: 48,
                            height: 1.0,
                            fontFamily: 'Thedus'),
                      ),
                      Image.asset(
                        'assets/images/fancy2.png',
                        width: 229,
                        height: 295,
                        fit: BoxFit.fill,
                      )
                    ],
                  ),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .025),
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'FANCY.',
                    style: style.copyWith(
                        color: ColorUtils.white,
                        fontSize: 48,
                        fontFamily: 'Thedus'),
                  ),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .025),
                  const NextBtn(
                    width: 32,
                    height: 32,
                  ),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .035),
                  Text(
                    '101.',
                    style: style.copyWith(
                        color: ColorUtils.white,
                        fontSize: 48,
                        fontFamily: 'Thedus'),
                  ),
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TRENDING 101.',
                    style:
                        style.copyWith(color: ColorUtils.white, fontSize: 32),
                  ),
                  SeeAll(color: ColorUtils.lightest)
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Container(
              height: MediaQuery.of(context).size.height * .5,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/trending1.png',
                        width: 196,
                        height: 295,
                        fit: BoxFit.fill,
                      ),
                      Text(
                        'TECH',
                        style: style.copyWith(
                            color: ColorUtils.white,
                            fontSize: 48,
                            fontFamily: 'Thedus'),
                      )
                    ],
                  ),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .025),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/trending2.png',
                        width: 229,
                        height: 344,
                        fit: BoxFit.fill,
                      ),
                      Text(
                        'FANCY. 101',
                        style: style.copyWith(
                            color: ColorUtils.white,
                            fontSize: 48,
                            fontFamily: 'Thedus'),
                      )
                    ],
                  ),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .025),
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 560,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/featured2.png'),
                fit: BoxFit.fill,
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 185,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          const Color(0xff202020).withOpacity(.0),
                          ColorUtils.black.withOpacity(.8)
                        ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'FEATURED',
                          style: style.copyWith(
                              color: ColorUtils.white, fontSize: 32),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 146,
                              child: Text(
                                'Nike LookBook SG//01 Tomorrow Is Fine.',
                                style: style.copyWith(
                                    fontFamily: 'SFPro',
                                    color: ColorUtils.white),
                              ),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: ColorUtils.skylight)),
                              child: Center(
                                child:
                                    SvgPicture.asset('assets/images/arrow.svg'),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Container(
              height: MediaQuery.of(context).size.height * .42,
              padding: const EdgeInsets.only(left: 15),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset(
                    'assets/images/trend1.png',
                    width: 229,
                    height: 344,
                    fit: BoxFit.fill,
                  ),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .025),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'TECH',
                        style: style.copyWith(
                            color: ColorUtils.white,
                            fontFamily: 'Thedus',
                            fontSize: 48,
                            height: .9),
                      ),
                      Image.asset(
                        'assets/images/trend2.png',
                        width: 196,
                        height: 295,
                        fit: BoxFit.fill,
                      )
                    ],
                  ),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .025),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TREND REPORT',
                    style:
                        style.copyWith(color: ColorUtils.white, fontSize: 32),
                  ),
                  SeeAll(color: ColorUtils.lightest)
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'FANCY.',
                    style: style.copyWith(
                        color: ColorUtils.white,
                        fontSize: 48,
                        fontFamily: 'Thedus'),
                  ),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .025),
                  const NextBtn(
                    width: 32,
                    height: 32,
                  ),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .035),
                  Text(
                    '101.',
                    style: style.copyWith(
                        color: ColorUtils.white,
                        fontSize: 48,
                        fontFamily: 'Thedus'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
