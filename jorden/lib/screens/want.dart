import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/own_product.dart';
import 'package:jorden/widget/want_products.dart';

class WantOwn extends StatefulWidget {
  const WantOwn({super.key});

  @override
  State<WantOwn> createState() => _WantOwnState();
}

class _WantOwnState extends State<WantOwn> {
  List<String> tabs = ['WANT', 'OWNS'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: ColorUtils.bg,
        appBar: AppBarWidget.appBar(
            context: context,
            leading: const Icon(
              Icons.arrow_back_ios_new,
              size: 20,
            ),
            title: Text(
              'KAIXA PHAM',
              style: style.copyWith(fontSize: 24),
            ),
            action: [
              SvgPicture.asset('assets/images/filter.svg'),
              SizeUtils.horizontalSpacing(
                  width: MediaQuery.of(context).size.width * .05)
            ]),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .06,
              child: TabBar(
                tabs: tabs.map((e) => Text(e)).toList(),
                indicatorColor: ColorUtils.white,
                labelColor: ColorUtils.white,
                unselectedLabelColor: ColorUtils.lightest,
                labelStyle: style.copyWith(fontSize: 28),
                unselectedLabelStyle: style.copyWith(fontSize: 28),
                indicatorSize: TabBarIndicatorSize.label,
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            const Expanded(
                child: TabBarView(children: [WantProduct(), OwnProduct()]))
          ],
        ),
      ),
    );
  }
}
