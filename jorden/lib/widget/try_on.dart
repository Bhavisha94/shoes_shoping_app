import 'package:flutter/material.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';

class TryOn extends StatelessWidget {
  const TryOn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .02),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text(
              'AR TRY-ON',
              style: style.copyWith(color: ColorUtils.white, fontSize: 32),
            ),
          ),
        ),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .015),
        Image.asset(
          'assets/images/try.png',
          width: MediaQuery.of(context).size.width * .85,
          height: 362,
          fit: BoxFit.fill,
        ),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .015),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              Text(
                '01',
                style: style.copyWith(color: ColorUtils.white, fontSize: 32),
              ),
              SizeUtils.horizontalSpacing(
                  width: MediaQuery.of(context).size.width * .05),
              SizedBox(
                width: 170,
                child: Text(
                  'Air Jordan 1 Retro High OG ‘Shadow 2.0’',
                  style: style.copyWith(
                      color: ColorUtils.white, fontFamily: 'SFPro'),
                ),
              )
            ],
          ),
        ),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .02),
        Container(
          width: 87,
          height: 32,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: ColorUtils.lighter)),
          child: Center(
            child: Text(
              'TRY-ON',
              style: style.copyWith(color: ColorUtils.skyLighest),
            ),
          ),
        ),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .02),
      ],
    );
  }
}
