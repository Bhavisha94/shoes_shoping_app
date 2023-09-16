import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/screens/product_details.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/list.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/divider.dart';

class Popular extends StatefulWidget {
  final String text;
  const Popular({super.key, required this.text});

  @override
  State<Popular> createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBarWidget.appBar(
          context: context,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                ),
                Text(
                  'Back',
                  style: style.copyWith(
                      fontFamily: 'SFPro', color: ColorUtils.skyDark),
                )
              ],
            ),
          ),
          title: Text(
            widget.text,
            style: style.copyWith(fontSize: 24),
          ),
          action: [
            SvgPicture.asset('assets/images/search_small.svg'),
            SizeUtils.horizontalSpacing(
                width: MediaQuery.of(context).size.width * .02),
            SvgPicture.asset('assets/images/filter2.svg'),
            SizeUtils.horizontalSpacing(
                width: MediaQuery.of(context).size.width * .03),
          ]),
      body: Column(
        children: [
          const DividerWidget(),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .01),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  'Browse',
                  style: style.copyWith(
                      fontFamily: 'SFPro', color: ColorUtils.lightest),
                ),
                SizeUtils.horizontalSpacing(
                    width: MediaQuery.of(context).size.width * .01),
                Text(
                  '453',
                  style: style.copyWith(
                      color: ColorUtils.white,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.w600),
                ),
                SizeUtils.horizontalSpacing(
                    width: MediaQuery.of(context).size.width * .01),
                Text(
                  'results',
                  style: style.copyWith(
                      fontFamily: 'SFPro', color: ColorUtils.lightest),
                ),
                const Spacer(),
                Text(
                  'Sort',
                  style: style.copyWith(
                      fontFamily: 'SFPro', color: ColorUtils.lightest),
                ),
                SizeUtils.horizontalSpacing(
                    width: MediaQuery.of(context).size.width * .01),
                Text(
                  'Featured',
                  style: style.copyWith(
                      color: ColorUtils.white,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .01),
          Expanded(
              child: Container(
            color: ColorUtils.skyLighter,
            child: GridView.builder(
              itemCount: searchList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  childAspectRatio: .7),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => ProductDetails(
                                tag: 'popular$index',
                                text: searchList[index].text,
                                image: searchList[index].image,
                              ))),
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: ColorUtils.skylight)),
                          child: Center(
                            child: SvgPicture.asset('assets/images/heart.svg'),
                          ),
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .015),
                        Hero(
                          tag: 'popular$index',
                          child: Image.asset(
                            'assets/images/${searchList[index].image}.png',
                            width: MediaQuery.of(context).size.width,
                            height: 113,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .005),
                        Text(
                          searchList[index].text,
                          style: style.copyWith(
                              fontFamily: 'SFPro', color: ColorUtils.inkBase),
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .015),
                        Text(
                          'LOWEST ASK',
                          style: style.copyWith(
                              fontFamily: 'SFPro',
                              fontSize: 11,
                              color: ColorUtils.skyDark),
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .005),
                        Row(
                          children: [
                            Text(
                              '\$${calendarList[index].price}',
                              style: style.copyWith(
                                  fontFamily: 'SFPro',
                                  fontWeight: FontWeight.w600,
                                  color: ColorUtils.inkBase),
                            ),
                            SizeUtils.horizontalSpacing(
                                width:
                                    MediaQuery.of(context).size.width * .015),
                            SvgPicture.asset('assets/images/dot.svg'),
                            SizeUtils.horizontalSpacing(
                                width:
                                    MediaQuery.of(context).size.width * .015),
                            Text(searchList[index].time,
                                style: style.copyWith(
                                    fontFamily: 'SFPro',
                                    fontSize: 11,
                                    color: ColorUtils.skyDark))
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ))
        ],
      ),
    );
  }
}
