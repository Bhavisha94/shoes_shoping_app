import 'package:flutter/material.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/divider.dart';

class TranckInfo extends StatelessWidget {
  final int index;
  final int trackIndex;
  final String no;
  final String info;
  final VoidCallback? onTap;
  const TranckInfo(
      {super.key,
      required this.index,
      required this.trackIndex,
      required this.no,
      required this.info,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                no,
                style: style.copyWith(
                    color: trackIndex == index
                        ? ColorUtils.white
                        : ColorUtils.light,
                    fontSize: 24),
              ),
              SizeUtils.horizontalSpacing(
                  width: MediaQuery.of(context).size.width * .05),
              Text(
                '$info ',
                style: style.copyWith(
                    fontFamily: 'SFPro',
                    color: trackIndex == index
                        ? ColorUtils.white
                        : ColorUtils.light),
              ),
              trackIndex >= index
                  ? Text(
                      '✓',
                      style: style.copyWith(
                          color: ColorUtils.success, fontFamily: 'SFPro'),
                    )
                  : const SizedBox(),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color:
                    trackIndex == index ? ColorUtils.white : ColorUtils.light,
                size: 15,
              )
            ],
          ),
          const DividerWidget()
        ],
      ),
    );
  }
}
