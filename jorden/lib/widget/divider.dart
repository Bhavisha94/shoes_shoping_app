import 'package:flutter/material.dart';
import 'package:jorden/utils/colors.dart';

class DividerWidget extends StatelessWidget {
  final Color? color;
  const DividerWidget({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color ?? ColorUtils.light,
      thickness: 1,
    );
  }
}
