import 'package:flutter/material.dart';
import 'package:jorden/utils/colors.dart';

class CheckContainerWidget extends StatelessWidget {
  const CheckContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        color: ColorUtils.white,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Container(
          width: 4,
          height: 4,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: ColorUtils.inkBase),
        ),
      ),
    );
  }
}
