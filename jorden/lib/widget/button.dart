// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/style.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback? onCallBack;
  const Button({super.key, required this.text, this.onCallBack});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCallBack,
      child: Container(
        width: MediaQuery.of(context).size.width * .9,
        height: MediaQuery.of(context).size.height * .065,
        decoration: BoxDecoration(
            color: ColorUtils.white, borderRadius: BorderRadius.circular(4)),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: style.copyWith(fontSize: 24),
            ),
            SvgPicture.asset(
              'assets/images/arrow.svg',
              color: ColorUtils.inkBase,
            )
          ],
        ),
      ),
    );
  }
}
