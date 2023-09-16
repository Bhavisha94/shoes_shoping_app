import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/screens/calendar.dart';
import 'package:jorden/screens/search.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/brands.dart';
import 'package:jorden/widget/collection.dart';
import 'package:jorden/widget/lowest.dart';
import 'package:jorden/widget/new_highest.dart';
import 'package:jorden/widget/next_btn.dart';
import 'package:jorden/widget/popular_widget.dart';
import 'package:jorden/widget/recommended.dart';
import 'package:jorden/widget/release.dart';
import 'package:jorden/widget/top_wanted.dart';
import 'package:jorden/widget/try_on.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pageController = PageController(),
      brandPageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBar(
        backgroundColor: ColorUtils.bg,
        elevation: 0,
        title: Text(
          'JORDEN.',
          style: style.copyWith(
              color: ColorUtils.lighter, fontSize: 24, letterSpacing: 2),
        ),
        actions: [
          InkWell(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => const Calendar())),
            child: SvgPicture.asset('assets/images/calendar.svg'),
          ),
          SizeUtils.horizontalSpacing(
              width: MediaQuery.of(context).size.width * .04),
          InkWell(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => const Search())),
            child: SvgPicture.asset('assets/images/search.svg'),
          ),
          SizeUtils.horizontalSpacing(
              width: MediaQuery.of(context).size.width * .04)
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'FEATURED',
                          style: style.copyWith(
                              color: ColorUtils.white, fontSize: 32),
                        ),
                        SizedBox(
                          width: 135,
                          child: Text(
                            'Fear of God XXX Nike Triple Black 2.0',
                            style: style.copyWith(
                                color: ColorUtils.white, fontFamily: 'SFPro'),
                          ),
                        )
                      ],
                    ),
                    const InkWell(
                      child: NextBtn(
                        width: 40,
                        height: 40,
                      ),
                    )
                  ],
                ),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .36,
                    child: PageView.builder(
                      controller: pageController,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          //height: 289,
                          height: MediaQuery.of(context).size.height * .36,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/banner.png'),
                                  fit: BoxFit.fill)),
                        );
                      },
                    ),
                  ),
                  Positioned(
                      bottom: 10,
                      left: 10,
                      child: SmoothPageIndicator(
                        controller: pageController,
                        count: 5,
                        effect: WormEffect(
                            dotWidth: 98,
                            dotHeight: 2,
                            dotColor: ColorUtils.light,
                            activeDotColor: ColorUtils.white,
                            spacing: 0),
                      ))
                ],
              ),
              const PopularItem(),
              const Collection(),
              Divider(
                height: 0,
                color: ColorUtils.skylight,
                thickness: 1,
              ),
              const RecommendedWidget(),
              const NewHighest(),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .025),
              Brands(controller: brandPageController),
              const TopWanted(),
              const TryOn(),
              const NewLowest(),
              const Release()
            ],
          ),
        ),
      ),
    );
  }
}
