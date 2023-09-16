import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jorden/bording_page_desc.dart';
import 'package:jorden/cubit/bording/cubit/onbording_cubit.dart';
import 'package:jorden/screens/bording_screen1.dart';
import 'package:jorden/screens/bording_screen2.dart';
import 'package:jorden/screens/bording_screen3.dart';
import 'package:jorden/screens/bording_screen4.dart';
import 'package:jorden/screens/choose_location.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/list.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/bording_screen_button.dart';

class OnBording extends StatefulWidget {
  const OnBording({super.key});

  @override
  State<OnBording> createState() => _OnBordingState();
}

class _OnBordingState extends State<OnBording> {
  PageController controller = PageController();
  int page = 0;
  List<Widget> list = [
    const OnBording1(),
    const OnBording2(),
    const OnBording3(),
    const OnBording4()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      body: BlocConsumer<OnbordingCubit, OnbordingState>(
        listener: (context, state) {
          if (state is OnbordingIndex) {
            page = state.index;
          }
        },
        builder: (context, state) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            child: SafeArea(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      page == 0
                          ? const SizedBox()
                          : InkWell(
                              onTap: () => controller.previousPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn),
                              child: Text(
                                'BACK',
                                style: style.copyWith(
                                    color: ColorUtils.lightest, fontSize: 18),
                              ),
                            ),
                      page == 3
                          ? const SizedBox()
                          : InkWell(
                              onTap: () => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const ChooseLocation())),
                              child: Text(
                                'SKIP',
                                style: style.copyWith(
                                    color: ColorUtils.lightest, fontSize: 18),
                              ),
                            )
                    ],
                  ),
                ),
                SizedBox(
                  //height: MediaQuery.of(context).size.height * .78,
                  height: MediaQuery.of(context).size.height * .74,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * .78,
                        child: PageView.builder(
                          itemCount: bordingList.length,
                          controller: controller,
                          onPageChanged: (value) {
                            page = value;
                            log(page.toString());
                            context.read<OnbordingCubit>().change(value);
                          },
                          itemBuilder: (context, index) {
                            return list[page];
                          },
                        ),
                      ),
                      Positioned(
                          bottom: MediaQuery.of(context).size.height * .07,
                          child: BordginPageDesc(
                              controller: controller, index: page))
                    ],
                  ),
                ),
                BordingButtons(controller: controller, page: page)
              ],
            )),
          );
        },
      ),
    );
  }
}
