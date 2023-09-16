import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jorden/screens/popular.dart';
import 'package:jorden/screens/product_details.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/see_all.dart';

class NewLowest extends StatelessWidget {
  const NewLowest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: ColorUtils.white,
      child: Column(
        children: [
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'NEW LOWEST',
                      style: style.copyWith(
                          fontSize: 32, color: ColorUtils.inkBase),
                    ),
                    SizeUtils.horizontalSpacing(width: 05),
                    Text(
                      'ASKS',
                      style: style.copyWith(
                          height: 1.8, color: ColorUtils.light, fontSize: 18),
                    )
                  ],
                ),
                SeeAll(
                  color: ColorUtils.inkBase,
                  onCallBack: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const Popular(text: 'NEW LOWEST'))),
                )
              ],
            ),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 252,
            padding: const EdgeInsets.only(left: 15),
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .45,
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ProductDetails(
                                    tag: 'lowest${index + 1}',
                                    text:
                                        'Air Jordan 1 Retro High OG ‘Shadow 2.0’',
                                    image: 'lowest${index + 1}',
                                  ))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .45,
                            height: 144,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/lowest${index + 1}.png'),
                                    fit: BoxFit.fill)),
                          ),
                          SizeUtils.verticalSpacing(
                              height: MediaQuery.of(context).size.height * .01),
                          Text(
                            'Air Jordan 1 Retro High OG ‘Shadow 2.0’',
                            style: style.copyWith(
                                fontFamily: 'SFPro', color: ColorUtils.inkBase),
                          ),
                          SizeUtils.verticalSpacing(
                              height:
                                  MediaQuery.of(context).size.height * .015),
                          Text(
                            'LOWEST ASK',
                            style: style.copyWith(
                                fontFamily: 'SFPro',
                                color: ColorUtils.skyDark,
                                fontSize: 11),
                          ),
                          Row(
                            children: [
                              Text(
                                '\$320',
                                style: style.copyWith(
                                    fontFamily: 'SFPro',
                                    fontWeight: FontWeight.w600,
                                    color: ColorUtils.inkBase),
                              ),
                              SizeUtils.horizontalSpacing(width: 5),
                              SvgPicture.asset('assets/images/dot.svg'),
                              SizeUtils.horizontalSpacing(width: 5),
                              Text(
                                '3,691 Sold',
                                style: style.copyWith(
                                    fontFamily: 'SFPro',
                                    color: ColorUtils.skyDark,
                                    fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .01),
        ],
      ),
    );
  }
}
