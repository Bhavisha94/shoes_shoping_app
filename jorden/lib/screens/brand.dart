import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jorden/cubit/filter/cubit/filter_cubit.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/list.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/button.dart';
import 'package:jorden/widget/divider.dart';
import 'package:jorden/widget/reset_btn.dart';

class Brand extends StatefulWidget {
  const Brand({super.key});

  @override
  State<Brand> createState() => _BrandState();
}

class _BrandState extends State<Brand> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;

    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBarWidget.appBar(
          context: context,
          leading: const Icon(Icons.arrow_back_ios, size: 20),
          title: Text(
            'BRAND',
            style: style.copyWith(fontSize: 24),
          ),
          action: [const ResetButton()]),
      body: BlocConsumer<FilterCubit, FilterState>(
        listener: (context, state) {
          if (state is BrandFilter) {
            selectedIndex = state.index;
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              const DividerWidget(),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      childAspectRatio: 1.5),
                  itemCount: brandList.length,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () => context.read<FilterCubit>().brand(index),
                          child: Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                    color: index == selectedIndex
                                        ? ColorUtils.white
                                        : ColorUtils.light)),
                            child: Center(
                              child: Image.asset(
                                'assets/images/${brandList[index].image}.png',
                                width: 111,
                                height: 40,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .005),
                        Text(
                          brandList[index].name,
                          style: style.copyWith(
                              color: ColorUtils.white, fontSize: 24),
                        )
                      ],
                    );
                  },
                ),
              ),
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
