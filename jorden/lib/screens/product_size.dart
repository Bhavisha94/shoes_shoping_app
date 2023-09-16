import 'package:flutter/material.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/list.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/divider.dart';

class ProductSize extends StatefulWidget {
  const ProductSize({super.key});

  @override
  State<ProductSize> createState() => _ProductSizeState();
}

class _ProductSizeState extends State<ProductSize> {
  List<String> tabs = ['NEW', 'Offer'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .52,
        child: Column(
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            AppBarWidget.appBar(
                context: context,
                leading: Icon(
                  Icons.close,
                  color: ColorUtils.white,
                ),
                title: Text(
                  'SELECT SIZE',
                  style: style.copyWith(fontSize: 24),
                ),
                action: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'US\' MEN',
                        style: style.copyWith(
                            fontFamily: 'SFPro', color: ColorUtils.skyDark),
                      ),
                    ],
                  ),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .03),
                ]),
            const DividerWidget(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .08,
              width: MediaQuery.of(context).size.width,
              child: TabBar(
                tabs: tabs
                    .map((e) => Tab(
                          text: e.toUpperCase(),
                        ))
                    .toList(),
                unselectedLabelColor: ColorUtils.light,
                labelColor: ColorUtils.white,
                indicatorWeight: 5,
                indicatorColor: ColorUtils.white,
                labelStyle: style.copyWith(fontSize: 28),
                unselectedLabelStyle: style.copyWith(fontSize: 28),
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 2.0,
                  ),
                ),
                padding: EdgeInsets.zero,
                dividerColor: ColorUtils.skyLighter,
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: ColorUtils.light,
                      border: Border.symmetric(
                          horizontal: BorderSide(color: ColorUtils.light))),
                  child: GridView.builder(
                    itemCount: newSizeList.length,
                    shrinkWrap: false,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 2,
                            mainAxisSpacing: 2,
                            childAspectRatio: 1.4),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        color: ColorUtils.bg,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              newSizeList[index].size,
                              style: style.copyWith(
                                  color: ColorUtils.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              newSizeList[index].price,
                              style: style.copyWith(color: ColorUtils.lightest),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: ColorUtils.light,
                      border: Border.symmetric(
                          horizontal: BorderSide(color: ColorUtils.light))),
                  child: GridView.builder(
                    itemCount: newSizeList.length,
                    shrinkWrap: false,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 2,
                            mainAxisSpacing: 2,
                            childAspectRatio: 1.4),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        color: ColorUtils.bg,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              newSizeList[index].size,
                              style: style.copyWith(
                                  color: ColorUtils.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              newSizeList[index].price,
                              style: style.copyWith(color: ColorUtils.lightest),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
