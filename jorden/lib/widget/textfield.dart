import 'package:flutter/material.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/utils/colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final bool obsecure;
  final Widget? suffix;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final Widget? prefix;
  const TextFieldWidget(
      {super.key,
      required this.label,
      required this.obsecure,
      this.suffix,
      this.textInputType,
      this.controller,
      this.prefix});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
          style: style.copyWith(
              fontSize: 14, color: ColorUtils.white, fontFamily: 'SFPro'),
          keyboardType: textInputType,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              isDense: true,
              label: Text(label,
                  style: style.copyWith(
                      fontSize: 14,
                      color: ColorUtils.lightest,
                      fontFamily: 'SFPro')),
              labelStyle: style.copyWith(
                  fontSize: 14,
                  color: ColorUtils.lightest,
                  fontFamily: 'SFPro'),
              border: const UnderlineInputBorder(
                borderSide: BorderSide.none,
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide.none,
              ),
              prefixIcon: prefix,
              suffixIcon: suffix),
        ),
        Divider(
          color: ColorUtils.lighter,
          height: 2,
        )
      ],
    );
  }
}
