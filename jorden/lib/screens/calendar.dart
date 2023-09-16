import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/screens/product_details.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/list.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leadingWidth: MediaQuery.of(context).size.width * .2,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Row(
              children: [
                const Icon(Icons.arrow_back_ios, size: 20),
                Text(
                  'BACK',
                  style: style.copyWith(
                      fontFamily: 'SFPro', color: ColorUtils.skyDark),
                )
              ],
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'CALENDAR',
          style: style.copyWith(fontSize: 24),
        ),
        actions: [
          SvgPicture.asset('assets/images/search_small.svg'),
          SizeUtils.horizontalSpacing(
              width: MediaQuery.of(context).size.width * .04)
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: ColorUtils.skyLighter,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              childAspectRatio: .7),
          itemCount: calendarList.length,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.white,
              padding: const EdgeInsets.all(15),
              child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ProductDetails(
                            image: calendarList[index].image,
                            text: calendarList[index].text,
                            tag: 'calendar$index'))),
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
                      tag: 'calendar$index',
                      child: Image.asset(
                        'assets/images/${calendarList[index].image}.png',
                        width: MediaQuery.of(context).size.width,
                        height: 113,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .005),
                    Text(
                      calendarList[index].text,
                      style: style.copyWith(
                          fontFamily: 'SFPro', color: ColorUtils.inkBase),
                    ),
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .015),
                    Text(
                      calendarList[index].date,
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
                            width: MediaQuery.of(context).size.width * .01),
                        SvgPicture.asset(
                            'assets/images/${calendarList[index].result}.svg'),
                        SizeUtils.horizontalSpacing(
                            width: MediaQuery.of(context).size.width * .015),
                        SvgPicture.asset('assets/images/dot.svg'),
                        SizeUtils.horizontalSpacing(
                            width: MediaQuery.of(context).size.width * .015),
                        Text('~ \$${calendarList[index].amount}',
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
      ),
    );
  }
}
