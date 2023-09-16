import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/utils/colors.dart';

class NextBtn extends StatelessWidget {
  final double width;
  final double height;
  const NextBtn({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: ColorUtils.lighter)),
      child: Center(
        child: SvgPicture.asset('assets/images/arrow.svg'),
      ),
    );
  }
}
