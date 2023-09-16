import 'package:flutter/material.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';

class WaitingReview extends StatefulWidget {
  const WaitingReview({super.key});

  @override
  State<WaitingReview> createState() => _WaitingReviewState();
}

class _WaitingReviewState extends State<WaitingReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBarWidget.appBar(
          context: context,
          leading: const SizedBox(),
          title: Text(
            'REQUEST TO SELL',
            style: style.copyWith(fontSize: 24),
          )),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 522,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/sell_request.png'),
                    fit: BoxFit.fill)),
          ),
          Text(
            'REQUEST TO SELL',
            style: style.copyWith(color: ColorUtils.white, fontSize: 24),
          ),
          Text(
            'SUBMITTED',
            style: style.copyWith(
                color: ColorUtils.white, fontSize: 48, height: 1.0),
          ),
          SizedBox(
            width: 249,
            child: Text(
              'You’ll be notified by Jorden. when it has been reviewed.',
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: ColorUtils.lightest, fontFamily: 'SFPro'),
            ),
          )
        ],
      ),
    );
  }
}
