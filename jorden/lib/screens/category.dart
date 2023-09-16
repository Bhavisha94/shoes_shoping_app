import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jorden/cubit/filter/cubit/filter_cubit.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/button.dart';
import 'package:jorden/widget/check_container.dart';
import 'package:jorden/widget/divider.dart';
import 'package:jorden/widget/reset_btn.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int selectedIndex = 0;
  List<String> list = [
    'BASKETBALL',
    'BOOTS',
    'LIFESTYLE',
    'RUNNING',
    'SANDALS',
    'SKATEBOARDING'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBarWidget.appBar(
          context: context,
          leading: const Icon(Icons.arrow_back_ios, size: 20),
          title: Text(
            'CATEGORY',
            style: style.copyWith(fontSize: 24),
          ),
          action: [const ResetButton()]),
      body: BlocConsumer<FilterCubit, FilterState>(
        listener: (context, state) {
          if (state is CategoryFilter) {
            selectedIndex = state.index;
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              const DividerWidget(),
              Expanded(
                  child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: list.length,
                padding: const EdgeInsets.all(20),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () =>
                            context.read<FilterCubit>().category(index),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                    color: selectedIndex == index
                                        ? ColorUtils.white
                                        : ColorUtils.light)),
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                Text(
                                  list[index],
                                  style: style.copyWith(
                                      fontSize: 22, color: ColorUtils.white),
                                ),
                                const Spacer(),
                                selectedIndex == index
                                    ? const CheckContainerWidget()
                                    : Container(
                                        width: 16,
                                        height: 16,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: ColorUtils.lighter)),
                                      )
                              ],
                            )),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .015)
                    ],
                  );
                },
              )),
              const DividerWidget(),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              const Button(text: 'SEE RESULTS'),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .02)
            ],
          );
        },
      ),
    );
  }
}
