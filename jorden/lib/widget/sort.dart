import 'package:flutter/material.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/check_container.dart';

class Sort extends StatelessWidget {
  final String title;
  final int index;
  final int selectedIndex;
  final VoidCallback? onCallBack;
  const Sort(
      {super.key,
      required this.title,
      required this.index,
      required this.selectedIndex,
      this.onCallBack});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCallBack,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style:
                style.copyWith(color: ColorUtils.skyDark, fontFamily: 'SFPro'),
          ),
          InkWell(
            onTap: onCallBack,
            child: index == selectedIndex
                ? const CheckContainerWidget()
                : Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: ColorUtils.lighter)),
                  ),
          )
        ],
      ),
    );
  }
}
