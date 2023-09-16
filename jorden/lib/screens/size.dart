import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/button.dart';
import 'package:jorden/widget/divider.dart';
import 'package:jorden/widget/reset_btn.dart';

class SizeScreen extends StatefulWidget {
  const SizeScreen({super.key});

  @override
  State<SizeScreen> createState() => _SizeScreenState();
}

class _SizeScreenState extends State<SizeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBarWidget.appBar(
          context: context,
          leading: const Icon(Icons.arrow_back_ios, size: 20),
          title: Text(
            'SIZE',
            style: style.copyWith(fontSize: 24),
          ),
          action: [const ResetButton()]),
      body: Column(
        children: [
          const DividerWidget(),
          ListTile(
            leading: SvgPicture.asset(
              'assets/images/size.svg',
            ),
            horizontalTitleGap: 0,
            title: Text(
              'Size Preferences',
              style: style.copyWith(
                  color: ColorUtils.white,
                  fontFamily: 'SFPro',
                  fontWeight: FontWeight.w600),
            ),
            trailing: SizedBox(
              width: MediaQuery.of(context).size.width * .2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'EU MEN',
                    style: style.copyWith(
                        fontFamily: 'SFPro', color: ColorUtils.skyDark),
                  ),
                  const SizedBox(width: 10),
                  SvgPicture.asset('assets/images/next.svg')
                ],
              ),
            ),
          ),
          const DividerWidget(),
          Expanded(
              child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5, crossAxisSpacing: 10, mainAxisSpacing: 10),
            padding: const EdgeInsets.all(15),
            itemCount: 18,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    border: Border.all(color: ColorUtils.light),
                    borderRadius: BorderRadius.circular(4)),
                child: Center(
                  child: Text(
                    '35.5',
                    style: style.copyWith(
                        color: ColorUtils.skyDark, fontFamily: 'SFPro'),
                  ),
                ),
              );
            },
          )),
          const DividerWidget(),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          const Button(text: 'SEE RESULTS'),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .025),
        ],
      ),
    );
  }
}
