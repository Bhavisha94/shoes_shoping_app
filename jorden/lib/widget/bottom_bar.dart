import 'package:flutter/material.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/widget/bottom_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jorden/cubit/bottom_bar/cubit/bottombar_cubit.dart';

class BottomBarWidget extends StatelessWidget {
  final int selectedIndex;
  const BottomBarWidget({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .07,
      color: ColorUtils.bg,
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomItem(
              image: 'home',
              text: 'Home 101',
              index: 0,
              selectedIndex: selectedIndex,
              onCallBack: () => context.read<BottombarCubit>().change(0),
            ),
            BottomItem(
              image: 'gallary',
              text: 'Style ®',
              index: 1,
              selectedIndex: selectedIndex,
              onCallBack: () => context.read<BottombarCubit>().change(1),
            ),
            BottomItem(
              image: 'notification',
              text: 'Notification',
              index: 2,
              selectedIndex: selectedIndex,
              onCallBack: () => context.read<BottombarCubit>().change(2),
            ),
            BottomItem(
              image: 'profile',
              text: 'Profile',
              index: 3,
              selectedIndex: selectedIndex,
              onCallBack: () => context.read<BottombarCubit>().change(3),
            )
          ],
        ),
      ),
    );
  }
}
