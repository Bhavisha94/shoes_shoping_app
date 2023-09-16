// ignore_for_file: deprecated_member_use

import 'package:flutter_svg/svg.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:jorden/utils/style.dart';

class BottomItem extends StatelessWidget {
  final String image;
  final String text;
  final int index;
  final int selectedIndex;
  final VoidCallback? onCallBack;
  const BottomItem(
      {super.key,
      required this.image,
      required this.text,
      required this.index,
      required this.selectedIndex,
      this.onCallBack});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCallBack,
      child: Container(
        height: MediaQuery.of(context).size.height * .07,
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .05),
        decoration: BoxDecoration(
            border: Border.symmetric(
                vertical: BorderSide(
                    color: index == selectedIndex
                        ? ColorUtils.light
                        : Colors.transparent))),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/$image.svg',
                color: index == selectedIndex
                    ? ColorUtils.white
                    : ColorUtils.lightest,
              ),
              SizeUtils.horizontalSpacing(
                  width: index == selectedIndex ? 5 : 0),
              index == selectedIndex
                  ? Text(
                      text,
                      style: style.copyWith(
                          fontFamily: 'SFPro',
                          color: ColorUtils.white,
                          fontWeight: FontWeight.w600),
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
