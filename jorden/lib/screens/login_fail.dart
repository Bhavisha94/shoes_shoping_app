// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';

class LoginFail extends StatefulWidget {
  const LoginFail({super.key});

  @override
  State<LoginFail> createState() => _LoginFailState();
}

class _LoginFailState extends State<LoginFail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .17),
            Text(
              'OH OH!',
              style: style.copyWith(
                color: ColorUtils.white,
                fontSize: 48,
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .017),
            Image.asset(
              'assets/images/fail.png',
              width: 157,
              height: 197,
              fit: BoxFit.fill,
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .1),
            Text(
              'LOGIN',
              style: style.copyWith(
                  color: ColorUtils.white, fontSize: 24, height: 1.0),
            ),
            Text(
              'FAILED',
              style: style.copyWith(color: ColorUtils.white, fontSize: 48),
            ),
            SizedBox(
              width: 238,
              child: Text(
                'Unleash the great deal of sneakers and all fashion at Jorden.',
                style: style.copyWith(
                    color: ColorUtils.lightest, fontFamily: 'SFPro'),
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .05),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'TRY AGAIN',
                  style: style.copyWith(
                    color: ColorUtils.white,
                    fontSize: 18,
                  ),
                ),
                SizeUtils.horizontalSpacing(
                    width: MediaQuery.of(context).size.width * .03),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: ColorUtils.white),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/images/arrow.svg',
                      color: ColorUtils.inkBase,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
