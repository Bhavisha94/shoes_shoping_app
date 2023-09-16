// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jorden/cubit/bording/cubit/onbording_cubit.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/list.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/utils/size.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BordginPageDesc extends StatelessWidget {
  final PageController controller;
  int index;
  BordginPageDesc({super.key, required this.controller, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnbordingCubit, OnbordingState>(
      listener: (context, state) {
        if (state is OnbordingIndex) {
          index = state.index;
        }
      },
      builder: (context, state) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Text(
                bordingList[index].text,
                style: style.copyWith(color: ColorUtils.white, fontSize: 56),
              ),
              SizedBox(
                width: 250,
                child: Text(
                  bordingList[index].desc,
                  style: style.copyWith(color: ColorUtils.lightest),
                  textAlign: TextAlign.center,
                ),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .025),
              SmoothPageIndicator(
                  controller: controller,
                  count: 4,
                  effect: WormEffect(
                      dotWidth: 40,
                      dotHeight: 2,
                      dotColor: ColorUtils.inklight,
                      activeDotColor: ColorUtils.skylight),
                  onDotClicked: (index) {})
            ],
          ),
        );
      },
    );
  }
}
