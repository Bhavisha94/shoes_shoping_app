import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jorden/cubit/filter/cubit/filter_cubit.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/list.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/button.dart';
import 'package:jorden/widget/divider.dart';
import 'package:jorden/widget/reset_btn.dart';

class ColorScreen extends StatefulWidget {
  const ColorScreen({super.key});

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBarWidget.appBar(
          context: context,
          leading: const Icon(Icons.arrow_back_ios, size: 20),
          title: Text(
            'COLORS',
            style: style.copyWith(fontSize: 24),
          ),
          action: [const ResetButton()]),
      body: BlocConsumer<FilterCubit, FilterState>(
        listener: (context, state) {
          if (state is ColorFilter) {
            selectedIndex = state.index;
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              const DividerWidget(),
              Expanded(
                  child: GridView.builder(
                itemCount: colorList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 2.7),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => context.read<FilterCubit>().color(index),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                              color: index == selectedIndex
                                  ? ColorUtils.white
                                  : ColorUtils.light)),
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                                color: colorList[index].color,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: ColorUtils.lighter,
                                    width: index == selectedIndex ? 1 : 0)),
                          ),
                          SizeUtils.horizontalSpacing(
                              width: MediaQuery.of(context).size.width * .05),
                          Text(
                            colorList[index].name,
                            style: style.copyWith(
                                color: ColorUtils.white,
                                fontFamily: 'SFPro',
                                fontWeight: FontWeight.w600),
                          )
                        ],
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
                  height: MediaQuery.of(context).size.height * .02)
            ],
          );
        },
      ),
    );
  }
}
