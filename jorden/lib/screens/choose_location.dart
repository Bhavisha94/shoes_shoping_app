import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/screens/welcome_screen.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/divider.dart';
import 'package:jorden/widget/textfield.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int countryIndex = 0;

  @override
  void initState() {
    //show();
    super.initState();
  }

  show() {
    Future.delayed(const Duration(milliseconds: 100), () {
      showLocation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .05),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 410,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/bg.png'),
                            fit: BoxFit.fill)),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 620,
                width: MediaQuery.of(context).size.width,
                color: ColorUtils.bg,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .05),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'LOCATION',
                        style: style.copyWith(
                            color: ColorUtils.white, fontSize: 48, height: 1.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Choose your location for accurate shipping rates, taxes and duties.',
                        style: style.copyWith(
                            color: ColorUtils.lighter,
                            fontFamily: 'SFPro',
                            height: 1.0),
                      ),
                    ),
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .015),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFieldWidget(
                        label: 'Search',
                        obsecure: false,
                        prefix: SizedBox(
                          width: 12,
                          height: 12,
                          child: Center(
                            child: SvgPicture.asset(
                                'assets/images/search_small.svg'),
                          ),
                        ),
                      ),
                    ),
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .025),
                    const DividerWidget(),
                    countries('us', 'United States', 0, () {
                      setState(() {
                        countryIndex = 0;
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const WelcomeScreen()));
                    }),
                    const DividerWidget(),
                    countries('india', 'India', 1, () {
                      setState(() {
                        countryIndex = 1;
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const WelcomeScreen()));
                    }),
                    const DividerWidget(),
                    countries('brazil', 'Brazil', 2, () {
                      setState(() {
                        countryIndex = 2;
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const WelcomeScreen()));
                    }),
                    const DividerWidget(),
                    countries('china', 'China', 3, () {
                      setState(() {
                        countryIndex = 3;
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const WelcomeScreen()));
                    }),
                    const DividerWidget(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  ListTile countries(String flag, String name, int index, VoidCallback? onTap) {
    return ListTile(
      minVerticalPadding: 0,
      onTap: onTap,
      dense: true,
      leading: SvgPicture.asset('assets/images/$flag.svg'),
      horizontalTitleGap: 0,
      title: Text(
        name,
        style: style.copyWith(fontFamily: 'SFPro', color: ColorUtils.white),
      ),
      trailing: Container(
        width: 16,
        height: 16,
        decoration: BoxDecoration(
            border: Border.all(color: ColorUtils.lighter),
            shape: BoxShape.circle),
        child: Center(
          child: index == countryIndex
              ? Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: ColorUtils.white, shape: BoxShape.circle),
                )
              : const SizedBox(),
        ),
      ),
    );
  }

  showLocation() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          color: ColorUtils.bg,
          padding: const EdgeInsets.all(15),
          child: Wrap(
            children: [
              Text(
                'LOCATION',
                style: style.copyWith(color: ColorUtils.white, fontSize: 48),
              ),
              Text(
                'Choose your location for accurate shipping rates, taxes and duties.',
                style: style.copyWith(),
              )
            ],
          ),
        );
      },
    );
  }
}
