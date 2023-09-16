import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/button.dart';

class ReturnAddress extends StatefulWidget {
  const ReturnAddress({super.key});

  @override
  State<ReturnAddress> createState() => _ReturnAddressState();
}

class _ReturnAddressState extends State<ReturnAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBarWidget.appBar(
          context: context,
          leading: const Icon(Icons.arrow_back_ios, size: 20),
          title: Text(
            '02-RETURN ADDRESS',
            style: style.copyWith(fontSize: 24),
          )),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .9,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: ColorUtils.light, width: 1),
              ),
              child: Row(
                children: [
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .03),
                  SizedBox(
                    width: 12,
                    height: 12,
                    child: SvgPicture.asset('assets/images/location.svg'),
                  ),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .03),
                  Expanded(
                      child: TextField(
                    style: style.copyWith(
                        fontFamily: 'SFPro', color: ColorUtils.white),
                    //onChanged: (value) => search(value),
                    decoration: InputDecoration(
                        isDense: true,
                        hintText: 'Search',
                        hintStyle: style.copyWith(
                            fontFamily: 'SFPro', color: ColorUtils.lighter),
                        border: const UnderlineInputBorder(
                            borderSide: BorderSide.none),
                        contentPadding: const EdgeInsets.all(0)),
                  )),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .03),
                  InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.close,
                        size: 15,
                        color: ColorUtils.white,
                      )),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .03),
                ],
              ),
            ),
            const Spacer(),
            const Button(text: 'CONTINUE'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .035),
          ],
        ),
      ),
    );
  }
}
