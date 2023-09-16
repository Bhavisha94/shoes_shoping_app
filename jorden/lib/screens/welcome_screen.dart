import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/screens/login.dart';
import 'package:jorden/screens/sign_up.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/button.dart';
import 'package:jorden/widget/divider.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .07),
                  Text(
                    'WELCOME.',
                    style:
                        style.copyWith(color: ColorUtils.white, fontSize: 48),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .03),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 410,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/bg.png'),
                            fit: BoxFit.fill)),
                    padding: const EdgeInsets.all(30),
                    child: SizedBox(
                        width: 312,
                        height: 283.16,
                        child: SvgPicture.asset('assets/images/circle.svg')),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 219,
                padding: const EdgeInsets.all(0),
                color: ColorUtils.bg,
                child: Column(
                  children: [
                    const DividerWidget(),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset('assets/images/us.svg'),
                          SizeUtils.horizontalSpacing(
                              width: MediaQuery.of(context).size.width * .03),
                          Text(
                            'Shopping form ',
                            style: style.copyWith(
                                color: ColorUtils.white, fontFamily: 'SFPro'),
                          ),
                          Column(
                            children: [
                              Text(
                                'United States',
                                style: style.copyWith(
                                  color: ColorUtils.white,
                                  fontFamily: 'SFPro',
                                ),
                              ),
                              const SizedBox(
                                width: 94,
                                child: DividerWidget(),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Button(
                        text: 'SIGN UP',
                        onCallBack: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SignUp(),
                            ))),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          link(
                              'Log in ',
                              () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const Login()))),
                          Text(
                            'or',
                            style: style.copyWith(
                                fontFamily: 'SFPro', color: ColorUtils.white),
                          ),
                          link(
                              ' Start Browsing',
                              () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const SignUp()))),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  InkWell link(String text, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Text(
            text,
            style: style.copyWith(
                color: ColorUtils.white,
                fontFamily: 'SFPro',
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            width: 42,
            child: DividerWidget(),
          )
        ],
      ),
    );
  }
}
