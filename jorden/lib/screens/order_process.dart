import 'package:flutter/material.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/divider.dart';

class OrderProcess extends StatefulWidget {
  const OrderProcess({super.key});

  @override
  State<OrderProcess> createState() => _OrderProcessState();
}

class _OrderProcessState extends State<OrderProcess> {
  int trackIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBarWidget.appBar(
          context: context,
          leading: const Icon(Icons.arrow_back_ios_new, size: 15),
          title: Text(
            'ORDER PROCESS',
            style: style.copyWith(fontSize: 24),
          )),
      body: Column(
        children: [
          const DividerWidget(),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          SizedBox(
            height: MediaQuery.of(context).size.height * .6,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    width: 8,
                    child: Column(
                      children: [
                        StepperContainer(
                          trackIndex: trackIndex,
                          index: 0,
                        ),
                        const StepperLine(),
                        StepperContainer(trackIndex: trackIndex, index: 1),
                        const StepperLine(),
                        StepperContainer(trackIndex: trackIndex, index: 2),
                        const StepperLine(),
                        StepperContainer(trackIndex: trackIndex, index: 3),
                        const StepperLine(),
                        StepperContainer(trackIndex: trackIndex, index: 4),
                        const StepperLine(),
                        StepperContainer(trackIndex: trackIndex, index: 5),
                      ],
                    ),
                  ),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .05),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StepperInfo(
                        no: '01.',
                        text: 'Ordered',
                        index: 0,
                        trackIndex: trackIndex,
                      ),
                      StepperInfo(
                        no: '02.',
                        text: 'Seller Confirmed',
                        index: 1,
                        trackIndex: trackIndex,
                      ),
                      StepperInfo(
                        no: '03.',
                        text: 'Shipped',
                        index: 2,
                        trackIndex: trackIndex,
                      ),
                      StepperInfo(
                        no: '04.',
                        text: 'Delivered to Jorden.',
                        index: 3,
                        trackIndex: trackIndex,
                      ),
                      StepperInfo(
                        no: '05.',
                        text: 'Verified',
                        index: 4,
                        trackIndex: trackIndex,
                      ),
                      StepperInfo(
                        no: '06.',
                        text: 'Completed',
                        index: 5,
                        trackIndex: trackIndex,
                      ),
                    ],
                  )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class StepperInfo extends StatelessWidget {
  final String no;
  final String text;
  final int index;
  final int trackIndex;
  const StepperInfo({
    super.key,
    required this.no,
    required this.text,
    required this.index,
    required this.trackIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              no,
              style: style.copyWith(
                  color:
                      trackIndex >= index ? ColorUtils.white : ColorUtils.light,
                  height: 1.0,
                  fontSize: 24),
            ),
            SizeUtils.horizontalSpacing(
                width: MediaQuery.of(context).size.width * .05),
            Text(
              text,
              style: style.copyWith(
                  color:
                      trackIndex >= index ? ColorUtils.white : ColorUtils.light,
                  fontFamily: 'SFPro'),
            ),
            SizeUtils.horizontalSpacing(
                width: MediaQuery.of(context).size.width * .01),
            trackIndex >= index
                ? Text(
                    '✓',
                    style: style.copyWith(
                        color: ColorUtils.success, fontFamily: 'SFPro'),
                  )
                : const SizedBox()
          ],
        ),
        const DividerWidget()
      ],
    );
  }
}

class StepperLine extends StatelessWidget {
  const StepperLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SizedBox(
      width: 8,
      child: Center(
        child: Container(
          width: 2,
          height: MediaQuery.of(context).size.height * .2,
          color: ColorUtils.light,
        ),
      ),
    ));
  }
}

class StepperContainer extends StatelessWidget {
  final int trackIndex;
  final int index;
  const StepperContainer(
      {super.key, required this.trackIndex, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: trackIndex >= index ? ColorUtils.white : ColorUtils.light,
      ),
    );
  }
}
