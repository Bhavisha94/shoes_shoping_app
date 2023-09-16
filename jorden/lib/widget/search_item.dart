import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/screens/product_details.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/list.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: searchList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          childAspectRatio: .7),
      itemBuilder: (context, index) {
        return Container(
          color: Colors.white,
          padding: const EdgeInsets.all(15),
          child: InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => ProductDetails(
                        image: searchList[index].image,
                        text: searchList[index].text,
                        tag: 'search$index'))),
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
                  tag: 'search$index',
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
                        width: MediaQuery.of(context).size.width * .015),
                    SvgPicture.asset('assets/images/dot.svg'),
                    SizeUtils.horizontalSpacing(
                        width: MediaQuery.of(context).size.width * .015),
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
    );
  }
}
