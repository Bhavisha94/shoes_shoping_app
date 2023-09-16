import 'package:flutter/material.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/button.dart';

class SuccessRequest extends StatefulWidget {
  const SuccessRequest({super.key});

  @override
  State<SuccessRequest> createState() => _SuccessRequestState();
}

class _SuccessRequestState extends State<SuccessRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 570,
                ),
                Positioned(
                  top: 0,
                  child: Image.asset(
                    'assets/images/request_success.png',
                    width: MediaQuery.of(context).size.width,
                    height: 562,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Text(
                          'Congratulations'.toUpperCase(),
                          style: style.copyWith(
                              color: ColorUtils.white, fontSize: 48),
                        ),
                        Text(
                          'SELLER REQUEST',
                          style: style.copyWith(
                              color: ColorUtils.white,
                              fontSize: 24,
                              height: 0.5),
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .005),
                        SizedBox(
                          width: 249,
                          child: Text(
                            'You’ll be notified by Jorden. when it has been reviewed.',
                            textAlign: TextAlign.center,
                            style: style.copyWith(
                                color: ColorUtils.lightest,
                                fontFamily: 'SFPro'),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
            const Button(text: 'GET STARTED'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .035)
          ],
        ),
      ),
    );
  }
}
