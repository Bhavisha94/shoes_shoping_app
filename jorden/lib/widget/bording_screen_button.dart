// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:jorden/screens/choose_location.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/widget/button.dart';
import 'package:jorden/widget/next_btn.dart';

class BordingButtons extends StatelessWidget {
  final PageController controller;
  final int page;
  const BordingButtons(
      {super.key, required this.controller, required this.page});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .13,
      child: Column(
        children: [
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .02),
          InkWell(
              onTap: () => page == 3
                  ? Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => const ChooseLocation()))
                  : controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn),
              child: page == 3
                  ? const Button(text: 'GET STARTED')
                  : const NextBtn(
                      width: 48,
                      height: 48,
                    )),
        ],
      ),
    );
  }
}
