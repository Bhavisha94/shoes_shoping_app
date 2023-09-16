import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jorden/cubit/filter/cubit/filter_cubit.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/button.dart';
import 'package:jorden/widget/divider.dart';
import 'package:jorden/widget/reset_btn.dart';
import 'package:jorden/widget/sort.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBarWidget.appBar(
          context: context,
          leading: const Icon(Icons.arrow_back_ios, size: 20),
          title: Text(
            'GENDER',
            style: style.copyWith(fontSize: 24),
          ),
          action: [const ResetButton()]),
      body: BlocConsumer<FilterCubit, FilterState>(
        listener: (context, state) {
          if (state is GenderFilter) {
            selectedIndex = state.index;
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              const DividerWidget(),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Sort(
                      title: 'Male',
                      index: 0,
                      selectedIndex: selectedIndex,
                      onCallBack: () => context.read<FilterCubit>().gender(0),
                    ),
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .015),
                    const DividerWidget(),
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .015),
                    Sort(
                      title: 'Female',
                      index: 1,
                      selectedIndex: selectedIndex,
                      onCallBack: () => context.read<FilterCubit>().gender(1),
                    ),
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .015),
                    const DividerWidget(),
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .015),
                    Sort(
                      title: 'Other',
                      index: 2,
                      selectedIndex: selectedIndex,
                      onCallBack: () => context.read<FilterCubit>().gender(2),
                    )
                  ],
                ),
              )),
              const DividerWidget(),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              const Button(text: 'SEE RESULTS'),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .02),
            ],
          );
        },
      ),
    );
  }
}
