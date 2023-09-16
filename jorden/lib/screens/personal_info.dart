import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/button.dart';
import 'package:jorden/widget/divider.dart';
import 'package:jorden/widget/textfield.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBarWidget.appBar(
          context: context,
          leading: const SizedBox(),
          title: Text('01-PEROSNAL INFO', style: style.copyWith(fontSize: 24)),
          action: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: const Icon(Icons.close, size: 20),
            ),
            SizeUtils.horizontalSpacing(
                width: MediaQuery.of(context).size.width * .03)
          ]),
      body: Column(
        children: [
          const DividerWidget(),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .01),
          SizedBox(
            width: MediaQuery.of(context).size.width * .9,
            child: Text(
              'This info is used to verify identity and deposit earnings after your sneakers sell.',
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: ColorUtils.lightest, fontFamily: 'SFPro'),
            ),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .03),
          SizedBox(
            width: MediaQuery.of(context).size.width * .9,
            child: const TextFieldWidget(label: 'YOUR NAME', obsecure: false),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          SizedBox(
            width: MediaQuery.of(context).size.width * .9,
            child: const TextFieldWidget(
                label: 'Your phone number', obsecure: false),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          SizedBox(
            width: MediaQuery.of(context).size.width * .9,
            child: TextFieldWidget(
              label: 'Day of Birth',
              obsecure: false,
              suffix: SizedBox(
                width: 12,
                height: 13.17,
                child: Center(
                    child: SvgPicture.asset('assets/images/calendar.svg')),
              ),
            ),
          ),
          const Spacer(),
          const Button(text: 'CONTINUE'),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .035),
        ],
      ),
    );
  }
}
