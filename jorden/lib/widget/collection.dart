// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';

class Collection extends StatelessWidget {
  const Collection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      //height: 460,
      height: MediaQuery.of(context).size.height * .58,
      color: ColorUtils.white,

      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'COLLECTION   .',
                      style: style.copyWith(
                          fontSize: 18, color: ColorUtils.inkBase),
                    ),
                    SizeUtils.horizontalSpacing(
                        width: MediaQuery.of(context).size.width * .02),
                    Text(
                      'NIKE',
                      style: style.copyWith(
                          fontSize: 18, color: ColorUtils.inkBase),
                    ),
                  ],
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .03),
                Text(
                  'ROCK',
                  style: style.copyWith(
                    fontSize: 48,
                    fontFamily: 'Thedus',
                  ),
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .08),
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: ColorUtils.skylight),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/images/arrow.svg',
                          color: ColorUtils.light,
                        ),
                      ),
                    ),
                    SizeUtils.horizontalSpacing(width: 7),
                    Text(
                      'CHECK',
                      style: style.copyWith(
                          fontSize: 18, color: ColorUtils.inkBase),
                    ),
                    const Spacer(),
                    Text(
                      'SPEED',
                      style: style.copyWith(fontFamily: 'Thedus', fontSize: 48),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            child: Image.asset(
              'assets/images/speed.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .58,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
