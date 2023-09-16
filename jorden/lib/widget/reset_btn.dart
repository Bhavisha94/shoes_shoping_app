import 'package:flutter/material.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/style.dart';

class ResetButton extends StatelessWidget {
  final VoidCallback? onCallBack;
  const ResetButton({super.key, this.onCallBack});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onCallBack,
        child: Text('RESET',
            style: style.copyWith(
                fontFamily: 'SFPro', color: ColorUtils.skyDark)));
  }
}
