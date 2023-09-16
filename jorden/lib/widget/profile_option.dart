import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';

class ProfileOption extends StatelessWidget {
  final String name;
  final String image;
  final VoidCallback? onTap;
  const ProfileOption(
      {super.key, required this.image, required this.name, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          SvgPicture.asset('assets/images/$image.svg'),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .01),
          Text(
            name,
            style: style.copyWith(
                fontFamily: 'SFPro',
                color: ColorUtils.white,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
