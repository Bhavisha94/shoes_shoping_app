// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/screens/transaction_history.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/list.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/divider.dart';

class ProfileSelling extends StatefulWidget {
  const ProfileSelling({super.key});

  @override
  State<ProfileSelling> createState() => _ProfileSellingState();
}

class _ProfileSellingState extends State<ProfileSelling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBarWidget.appBar(
          context: context,
          leading: const Icon(Icons.arrow_back_ios_new, size: 20),
          title: Text('Selling'.toUpperCase(),
              style: style.copyWith(fontSize: 24)),
          action: [
            SvgPicture.asset('assets/images/settings.svg'),
            SizeUtils.horizontalSpacing(
                width: MediaQuery.of(context).size.width * .03)
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const DividerWidget(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            Text(
              'Available Currency',
              style: style.copyWith(
                  color: ColorUtils.white,
                  fontFamily: 'SFPro',
                  fontWeight: FontWeight.w600),
            ),
            Text(
              '\$1200.08',
              style: style.copyWith(fontSize: 48, color: ColorUtils.white),
            ),
            Container(
              width: 145,
              height: 32,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: ColorUtils.white),
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cash Out Now',
                    style: style.copyWith(
                        fontFamily: 'SFPro', color: ColorUtils.inkBase),
                  ),
                  SvgPicture.asset(
                    'assets/images/arrow.svg',
                    color: ColorUtils.inkBase,
                  )
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .05),
            Container(
              color: ColorUtils.light,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 1, mainAxisSpacing: 1),
                itemCount: sellingList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(1),
                itemBuilder: (context, index) {
                  return Container(
                    color: ColorUtils.bg,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                  border: Border.all(color: ColorUtils.lighter),
                                  shape: BoxShape.circle),
                              child: Center(
                                child: SvgPicture.asset(
                                    'assets/images/${sellingList[index].image}.svg'),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              child: Container(
                                width: 16,
                                height: 16,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: ColorUtils.errorDark),
                                child: Center(
                                    child: Text(
                                  sellingList[index].total,
                                  style: style.copyWith(
                                      fontFamily: 'SFPro',
                                      color: ColorUtils.white,
                                      fontSize: 11),
                                )),
                              ),
                            )
                          ],
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .02),
                        Text(
                          sellingList[index].text.toUpperCase(),
                          style: style.copyWith(
                              color: ColorUtils.white, fontSize: 18),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            info(context, 'My Sales', '45', () {}),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            const DividerWidget(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            info(
                context,
                'Transaction History',
                'Total :\$3045',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const TransactionHistory()))),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            const DividerWidget(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            info(context, 'Reject Products', '03', () {}),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            const DividerWidget(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            info(context, 'Seller ID', '', () {}),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
          ],
        ),
      ),
    );
  }

  Padding info(BuildContext context, String text, String value,
      VoidCallback onCallBack) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: InkWell(
        onTap: onCallBack,
        child: Row(
          children: [
            Text(
              text,
              style:
                  style.copyWith(color: ColorUtils.white, fontFamily: 'SFPro'),
            ),
            const Spacer(),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    value,
                    style: style.copyWith(
                        color: ColorUtils.skyDark, fontFamily: 'SFPro'),
                  ),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .025),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: ColorUtils.skyDark,
                    size: 15,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
