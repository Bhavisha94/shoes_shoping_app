import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/screens/popular.dart';
import 'package:jorden/screens/product_details.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/see_all.dart';

class TopWanted extends StatelessWidget {
  const TopWanted({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: ColorUtils.white,
      child: Column(
        children: [
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .03),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TOP WANTED',
                      style: style.copyWith(
                          fontSize: 32, color: ColorUtils.inkBase),
                    ),
                    Text(
                      '10',
                      style: style.copyWith(fontSize: 18, height: 1.8),
                    ),
                  ],
                ),
                SeeAll(
                  color: ColorUtils.inkBase,
                  onCallBack: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const Popular(text: 'TOP WANTED'))),
                )
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 72,
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ProductDetails(
                                    tag: 'top${index + 1}',
                                    text:
                                        'Air Jordan 1 Retro High OG ‘Shadow 2.0’',
                                    image: 'top${index + 1}',
                                  ))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '0${index + 1}',
                            style: style.copyWith(fontSize: 32),
                          ),
                          Hero(
                            tag: 'top${index + 1}',
                            child: Image.asset(
                              'assets/images/top${index + 1}.png',
                              width: 88,
                              height: 72,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 170,
                                child: Text(
                                  'Air Jordan 1 Retro High OG ‘Shadow 2.0’',
                                  style: style.copyWith(fontFamily: 'SFPro'),
                                ),
                              ),
                              SizeUtils.verticalSpacing(
                                  height:
                                      MediaQuery.of(context).size.height * .01),
                              Row(
                                children: [
                                  Text(
                                    '\$320',
                                    style: style.copyWith(
                                        fontFamily: 'SFPro',
                                        fontSize: 12,
                                        color: ColorUtils.inkBase,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizeUtils.horizontalSpacing(width: 5),
                                  SvgPicture.asset('assets/images/dot.svg'),
                                  SizeUtils.horizontalSpacing(width: 5),
                                  Text(
                                    'Last Sale: \$312',
                                    style: style.copyWith(
                                        fontFamily: 'SFPro',
                                        color: ColorUtils.skyDark,
                                        fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    height: 25,
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
