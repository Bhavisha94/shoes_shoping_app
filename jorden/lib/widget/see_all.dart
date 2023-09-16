import 'package:flutter/material.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/style.dart';

class SeeAll extends StatelessWidget {
  final Color color;
  final VoidCallback? onCallBack;
  const SeeAll({super.key, required this.color, this.onCallBack});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCallBack,
      child: Column(
        children: [
          Text(
            'SEE ALL',
            style: style.copyWith(fontSize: 18, color: color),
          ),
          SizedBox(
            width: 38,
            child: Divider(
              color: ColorUtils.inkBase.withOpacity(.6),
              height: 0,
              thickness: 1,
            ),
          )
        ],
      ),
    );
  }
}
