import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';

class FilterOption extends StatelessWidget {
  final String text;
  final VoidCallback? onCallBack;
  const FilterOption({super.key, required this.text, this.onCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 0,
      onTap: onCallBack,
      title: Text(
        text,
        style: style.copyWith(
            color: ColorUtils.white,
            fontFamily: 'SFPro',
            fontWeight: FontWeight.w600,
            fontSize: 16),
      ),
      trailing: SizedBox(
        width: MediaQuery.of(context).size.width * .2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('All',
                style: style.copyWith(
                    color: ColorUtils.skyDark, fontFamily: 'SFPro')),
            SizeUtils.horizontalSpacing(
                width: MediaQuery.of(context).size.width * .015),
            SvgPicture.asset('assets/images/next.svg')
          ],
        ),
      ),
    );
  }
}
