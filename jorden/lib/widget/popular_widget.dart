import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/screens/popular.dart';
import 'package:jorden/screens/product_details.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/see_all.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: ColorUtils.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .025),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'POPULAR',
                      style: style.copyWith(
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      '12',
                      style: style.copyWith(
                          fontSize: 11, fontFamily: 'SFPro', height: 1.5),
                    )
                  ],
                ),
                SeeAll(
                  color: ColorUtils.inkBase,
                  onCallBack: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const Popular(text: 'POPULAR'))),
                )
              ],
            ),
          ),
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
                                    tag: 'popular$index',
                                    text:
                                        'Air Jordan 1 Retro High OG ‘Shadow 2.0’',
                                    image: 'popular${index + 1}',
                                  ))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Hero(
                            tag: 'popular$index',
                            child: Container(
                              width: MediaQuery.of(context).size.width * .45,
                              height: 144,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/popular${index + 1}.png'),
                                      fit: BoxFit.fill)),
                            ),
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
          )
        ],
      ),
    );
  }
}
