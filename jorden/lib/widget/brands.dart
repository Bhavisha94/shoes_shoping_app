import 'package:flutter/material.dart';
import 'package:jorden/screens/popular.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/next_btn.dart';
import 'package:jorden/widget/see_all.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Brands extends StatefulWidget {
  final PageController controller;
  const Brands({super.key, required this.controller});

  @override
  State<Brands> createState() => _BrandsState();
}

class _BrandsState extends State<Brands> {
  int brandIndex = 0;
  List<String> brands = ['nike', 'jordan', 'adidas'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .02),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'BRANDS',
                style: style.copyWith(color: ColorUtils.white, fontSize: 32),
              ),
              SeeAll(
                color: ColorUtils.lightest,
                onCallBack: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const Popular(text: 'BRANDS'))),
              ),
            ],
          ),
        ),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .015),
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .5,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 170,
                    child: Text(
                      'JUST \nDO IT //',
                      style: style.copyWith(
                          color: ColorUtils.white,
                          fontSize: 48,
                          fontFamily: 'Thedus'),
                    ),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      NextBtn(
                        width: 40,
                        height: 40,
                      )
                    ],
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          '// - MAKE \nIT COUNT',
                          textAlign: TextAlign.end,
                          style: style.copyWith(
                              color: ColorUtils.white,
                              fontFamily: 'Thedus',
                              fontSize: 48),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .5,
                child: PageView.builder(
                    itemCount: 4,
                    controller: widget.controller,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        'assets/images/brand.png',
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * .5,
                        fit: BoxFit.fill,
                      );
                    }),
              ),
            )
          ],
        ),
        Container(
          height: 48,
          padding: const EdgeInsets.only(left: 20),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  height: 47,
                  width: 108,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                          color: index == brandIndex
                              ? ColorUtils.skyDark
                              : ColorUtils.skyDark)),
                  child: Center(
                    child: Image.asset('assets/images/${brands[index]}.png'),
                  ),
                ),
              );
            },
          ),
        ),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .02),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: SmoothPageIndicator(
              controller: widget.controller,
              count: 4,
              effect: WormEffect(
                  dotColor: ColorUtils.light,
                  activeDotColor: ColorUtils.white,
                  dotWidth: 6,
                  dotHeight: 6),
            ),
          ),
        ),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .03),
      ],
    );
  }
}
