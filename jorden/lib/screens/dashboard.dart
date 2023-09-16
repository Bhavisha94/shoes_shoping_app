import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jorden/cubit/bottom_bar/cubit/bottombar_cubit.dart';
import 'package:jorden/screens/gallary.dart';
import 'package:jorden/screens/home.dart';
import 'package:jorden/screens/notification.dart';
import 'package:jorden/screens/profile.dart';
import 'package:jorden/widget/bottom_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;
  List<Widget> list = [
    const Home(),
    const Gallary(),
    const NotificationScreen(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottombarCubit, BottombarState>(
      listener: (context, state) {
        if (state is BottombarIndex) {
          selectedIndex = state.index;
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: list[selectedIndex],
          bottomNavigationBar: BottomBarWidget(selectedIndex: selectedIndex),
        );
      },
    );
  }
}
