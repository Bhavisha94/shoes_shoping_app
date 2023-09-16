import 'package:flutter/material.dart';
import 'package:jorden/screens/dashboard.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/next_btn.dart';

class LoginSuccess extends StatefulWidget {
  const LoginSuccess({super.key});

  @override
  State<LoginSuccess> createState() => _LoginSuccessState();
}

class _LoginSuccessState extends State<LoginSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .02),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 580,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/login_success.png'),
                    fit: BoxFit.fill)),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .05),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'LOGIN',
              style: style.copyWith(
                  color: ColorUtils.white, fontSize: 24, height: .5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Successfully'.toUpperCase(),
                  style: style.copyWith(color: ColorUtils.white, fontSize: 48),
                ),
                InkWell(
                  onTap: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => const Dashboard()),
                      (route) => false),
                  child: const NextBtn(
                    width: 48,
                    height: 48,
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
