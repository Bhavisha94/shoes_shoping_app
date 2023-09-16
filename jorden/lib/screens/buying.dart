import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/buying_item.dart';

class Buying extends StatefulWidget {
  const Buying({super.key});

  @override
  State<Buying> createState() => _BuyingState();
}

class _BuyingState extends State<Buying> {
  List<String> tabs = ['Need to confirm', 'Shipped', 'Reviewing', 'Verified'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: ColorUtils.bg,
        appBar: AppBarWidget.appBar(
            context: context,
            leading: const Icon(Icons.arrow_back),
            title: Text(
              'BUYING',
              style: style.copyWith(fontSize: 24),
            ),
            action: [
              SvgPicture.asset('assets/images/search_small.svg'),
              SizeUtils.horizontalSpacing(
                  width: MediaQuery.of(context).size.width * .03)
            ]),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .06,
              child: TabBar(
                tabs: tabs.map((e) => Text(e)).toList(),
                isScrollable: true,
                indicatorColor: ColorUtils.white,
                labelColor: ColorUtils.white,
                unselectedLabelColor: ColorUtils.lightest,
                labelStyle: style.copyWith(
                    fontFamily: 'SFPro', fontWeight: FontWeight.w600),
                unselectedLabelStyle: style.copyWith(fontFamily: 'SFPro'),
                indicatorSize: TabBarIndicatorSize.label,
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            const Expanded(
              child: TabBarView(children: [
                BuyingProductStatus(),
                BuyingProductStatus(),
                BuyingProductStatus(),
                BuyingProductStatus()
              ]),
            )
          ],
        ),
      ),
    );
  }
}
