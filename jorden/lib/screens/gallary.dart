import 'package:flutter/material.dart';
import 'package:jorden/screens/news.dart';
import 'package:jorden/screens/style.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/style.dart';

class Gallary extends StatefulWidget {
  const Gallary({super.key});

  @override
  State<Gallary> createState() => _GallaryState();
}

class _GallaryState extends State<Gallary> {
  List<String> tabs = ['STYLE', 'NEWS'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      body: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .08,
                  width: MediaQuery.of(context).size.width,
                  child: TabBar(
                    labelPadding: EdgeInsets.zero,
                    indicatorPadding: EdgeInsets.zero,
                    tabs: tabs
                        .map((e) => Tab(
                              text: e,
                            ))
                        .toList(),
                    unselectedLabelColor: ColorUtils.light,
                    labelColor: ColorUtils.white,
                    labelStyle: style.copyWith(fontSize: 30),
                    unselectedLabelStyle: style.copyWith(fontSize: 30),
                    padding: EdgeInsets.zero,
                    dividerColor: ColorUtils.skyLighter,
                    indicatorColor: ColorUtils.white,
                    indicatorSize: TabBarIndicatorSize.label,
                  ),
                ),
                const Expanded(child: TabBarView(children: [Style(), News()]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
