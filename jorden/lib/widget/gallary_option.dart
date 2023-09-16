import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/style.dart';

class GallaryOption extends StatelessWidget {
  final String text;
  final String image;
  final VoidCallback? onCallBack;
  const GallaryOption(
      {super.key, required this.text, required this.image, this.onCallBack});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCallBack,
      child: Container(
        width: MediaQuery.of(context).size.width * .9,
        height: 56,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: ColorUtils.lighter)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: style.copyWith(color: ColorUtils.white, fontSize: 24),
            ),
            SvgPicture.asset('assets/images/$image.svg')
          ],
        ),
      ),
    );
  }
}
