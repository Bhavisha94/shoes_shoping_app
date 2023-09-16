// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/button.dart';
import 'package:jorden/widget/textfield.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBarWidget.appBar(
        context: context,
        leading: const Icon(Icons.arrow_back_ios, size: 20),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'RESET PASSWORD.',
                style: style.copyWith(
                  color: Colors.white,
                  fontSize: 48,
                ),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              Text(
                'Enter the email address associated with your account and we’ll send you a link to reset your password',
                style: style.copyWith(
                    fontFamily: 'SFPro', color: ColorUtils.lighter),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              const TextFieldWidget(
                label: 'Your email address',
                obsecure: true,
                textInputType: TextInputType.emailAddress,
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .05),
              Button(
                text: 'SEND RESET LINK',
                onCallBack: () => show(),
              )
            ],
          ),
        ),
      ),
    );
  }

  show() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          elevation: 0,
          backgroundColor: ColorUtils.black.withOpacity(.9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * .9,
            height: MediaQuery.of(context).size.height * .27,
            child: Column(
              children: [
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .02),
                Text(
                  'SENT.',
                  style: style.copyWith(color: ColorUtils.white, fontSize: 48),
                ),
                SizedBox(
                  width: 260,
                  child: Text(
                    'Please view your email for password reset instructions',
                    textAlign: TextAlign.center,
                    style: style.copyWith(
                        color: ColorUtils.lighter, fontFamily: 'SFPro'),
                  ),
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .025),
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    width: 127,
                    height: 32,
                    decoration: BoxDecoration(
                        color: ColorUtils.white,
                        borderRadius: BorderRadius.circular(4)),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Login Again',
                          style: style.copyWith(
                              fontSize: 14,
                              fontFamily: 'SFPro',
                              color: ColorUtils.inkBase),
                        ),
                        SvgPicture.asset(
                          'assets/images/arrow.svg',
                          color: ColorUtils.inkBase,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
