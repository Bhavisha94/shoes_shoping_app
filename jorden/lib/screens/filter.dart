import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jorden/cubit/filter/cubit/filter_cubit.dart';
import 'package:jorden/screens/brand.dart';
import 'package:jorden/screens/category.dart';
import 'package:jorden/screens/colors.dart';
import 'package:jorden/screens/gender.dart';
import 'package:jorden/screens/size.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/button.dart';
import 'package:jorden/widget/divider.dart';
import 'package:jorden/widget/filter_option.dart';
import 'package:jorden/widget/reset_btn.dart';
import 'package:jorden/widget/sort.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  int selectedIndex = 0, conditionSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.close),
        ),
        centerTitle: true,
        title: Text(
          'FILTER',
          style: style.copyWith(fontSize: 24),
        ),
        actions: const [ResetButton()],
      ),
      body: BlocConsumer<FilterCubit, FilterState>(
        listener: (context, state) {
          if (state is SortFilter) {
            selectedIndex = state.index;
          } else if (state is ConditionFilter) {
            conditionSelectedIndex = state.index;
          }
        },
        builder: (context, state) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const DividerWidget(),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sort by',
                          style: style.copyWith(
                              color: ColorUtils.white,
                              fontFamily: 'SFPro',
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .015),
                        Sort(
                          title: 'Popular',
                          index: 0,
                          selectedIndex: selectedIndex,
                          onCallBack: () => context.read<FilterCubit>().sort(0),
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .015),
                        Sort(
                          title: 'New',
                          index: 1,
                          selectedIndex: selectedIndex,
                          onCallBack: () => context.read<FilterCubit>().sort(1),
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .015),
                        Sort(
                          title: 'Upcoming',
                          index: 2,
                          selectedIndex: selectedIndex,
                          onCallBack: () => context.read<FilterCubit>().sort(2),
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .015),
                        Sort(
                          title: 'Price (Low - High)',
                          index: 3,
                          selectedIndex: selectedIndex,
                          onCallBack: () => context.read<FilterCubit>().sort(3),
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .015),
                        Sort(
                          title: 'Price (High - Low)',
                          index: 4,
                          selectedIndex: selectedIndex,
                          onCallBack: () => context.read<FilterCubit>().sort(4),
                        ),
                      ],
                    ),
                  ),
                  const DividerWidget(),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Condition',
                          style: style.copyWith(
                              color: ColorUtils.white,
                              fontFamily: 'SFPro',
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .015),
                        Sort(
                          title: 'New',
                          index: 0,
                          selectedIndex: conditionSelectedIndex,
                          onCallBack: () =>
                              context.read<FilterCubit>().condition(0),
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .015),
                        Sort(
                          title: 'Like New',
                          index: 1,
                          selectedIndex: conditionSelectedIndex,
                          onCallBack: () =>
                              context.read<FilterCubit>().condition(1),
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .015),
                        Sort(
                          title: 'Used',
                          index: 2,
                          selectedIndex: conditionSelectedIndex,
                          onCallBack: () =>
                              context.read<FilterCubit>().condition(2),
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .015),
                        Sort(
                          title: 'Youth',
                          index: 3,
                          selectedIndex: conditionSelectedIndex,
                          onCallBack: () =>
                              context.read<FilterCubit>().condition(3),
                        ),
                      ],
                    ),
                  ),
                  const DividerWidget(),
                  FilterOption(
                    text: 'Gender',
                    onCallBack: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Gender())),
                  ),
                  const DividerWidget(),
                  FilterOption(
                    text: 'Size',
                    onCallBack: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SizeScreen())),
                  ),
                  const DividerWidget(),
                  FilterOption(
                    text: 'Category',
                    onCallBack: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CategoryScreen())),
                  ),
                  const DividerWidget(),
                  FilterOption(
                    text: 'Title',
                    onCallBack: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Brand())),
                  ),
                  const DividerWidget(),
                  FilterOption(
                    text: 'Color',
                    onCallBack: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ColorScreen())),
                  ),
                  const DividerWidget(),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .015),
                  const Button(text: 'SEE RESULTS'),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .015),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
