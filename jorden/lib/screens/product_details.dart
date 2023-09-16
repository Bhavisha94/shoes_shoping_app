// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/screens/add_to_owns.dart';
import 'package:jorden/screens/product_size.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/list.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/divider.dart';

class ProductDetails extends StatefulWidget {
  final String image;
  final String text;
  final String tag;
  const ProductDetails(
      {super.key, required this.image, required this.text, required this.tag});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      appBar: AppBarWidget.appBar(
          context: context,
          leading: Icon(
            Icons.arrow_back_ios,
            color: ColorUtils.inkBase,
            size: 20,
          ),
          title: SizedBox(
            width: 231,
            child: Text(
              widget.text,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: style.copyWith(
                color: ColorUtils.inkBase,
                fontSize: 16,
                fontFamily: 'SFPro',
              ),
            ),
          ),
          action: [
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
            SizeUtils.horizontalSpacing(
                width: MediaQuery.of(context).size.width * .03),
          ]),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Hero(
                  tag: widget.tag,
                  child: Container(
                    width: MediaQuery.of(context).size.width * .9,
                    height: 266,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/${widget.image}.png'),
                            fit: BoxFit.fill)),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  button('try-on', 'AR Try-on'),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .02),
                  button('ask', 'Sell or Ask')
                ],
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '100% Authentic',
                    style: style.copyWith(fontFamily: 'SFPro'),
                  ),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .01),
                  SizedBox(
                    width: 4,
                    height: 4,
                    child: SvgPicture.asset(
                      'assets/images/dot.svg',
                      color: ColorUtils.inkBase,
                    ),
                  ),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .01),
                  Text(
                    'Condition: New',
                    style: style.copyWith(fontFamily: 'SFPro'),
                  ),
                ],
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .03),
              divider(),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .01),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 138,
                      height: 55,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Last Sale'.toUpperCase(),
                            style: style.copyWith(fontSize: 24),
                          ),
                          Row(
                            children: [
                              Text(
                                '\$320',
                                style: style.copyWith(
                                    fontFamily: 'SFPro',
                                    fontWeight: FontWeight.w600),
                              ),
                              SizeUtils.horizontalSpacing(
                                  width:
                                      MediaQuery.of(context).size.width * .01),
                              SvgPicture.asset('assets/images/expand.svg'),
                              SizeUtils.horizontalSpacing(
                                  width:
                                      MediaQuery.of(context).size.width * .01),
                              Text(
                                '-\$23(-21.8%)',
                                style: style.copyWith(
                                    fontFamily: 'SFPro', fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 93,
                      height: 36,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: ColorUtils.skyBase,
                          ),
                          borderRadius: BorderRadius.circular(4)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset('assets/images/data.svg'),
                          Text(
                            'DATA',
                            style: style.copyWith(
                                fontFamily: 'SFPro',
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .01),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: DividerWidget(
                  color: ColorUtils.skyLighter,
                ),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'PRODUCT DETAIL',
                  style: style.copyWith(fontSize: 24),
                ),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'The adidas Yeezy Boost 700 MNVN ‘Bright Cyan’ makes use of a lightweight polyester upper, secured with no-tie bungee laces and finished in a vibrant aqua hue. ',
                  style: style.copyWith(
                      fontFamily: 'SFPro', color: ColorUtils.lightest),
                ),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              divider(),
              details('Brand', 'Adidas'),
              divider(),
              details('Style', 'GX3605'),
              divider(),
              details('Colorway', 'White/Grey'),
              divider(),
              details('Retail Price', '\$200'),
              divider(),
              details('Release Date', '6 June 2021'),
              divider(),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              add(context, 'ADD TO OWNS', () => showAddOwn()),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .02),
              divider(),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'STYLE WITH JORDEN.',
                  style: style.copyWith(fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Show off how you wear yours.',
                  style: style.copyWith(
                      fontFamily: 'SFPro',
                      fontSize: 12,
                      color: ColorUtils.lightest),
                ),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              Container(
                height: 235,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Image.asset('assets/images/style${index + 1}.png'),
                    );
                  },
                ),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              add(context, 'ADD PHOTO', () {}),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .025),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'YOU MAY ALSO LIKE',
                  style: style.copyWith(fontSize: 24),
                ),
              ),
              GridView.builder(
                itemCount: searchList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    childAspectRatio: .7),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
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
                        Image.asset(
                          'assets/images/${searchList[index].image}.png',
                          width: MediaQuery.of(context).size.width,
                          height: 113,
                          fit: BoxFit.fill,
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
                  );
                },
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 160,
                color: ColorUtils.bg,
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text(
                          'SIZE:',
                          style: style.copyWith(
                              color: ColorUtils.white,
                              fontFamily: 'SFPro',
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'All Size',
                          style: style.copyWith(
                              color: ColorUtils.skyDark, fontFamily: 'SFPro'),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () => showSize(),
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: ColorUtils.white,
                            size: 15,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.add,
                          color: ColorUtils.white,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset('assets/images/upload.svg'),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 64,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorUtils.skyLighter),
                          borderRadius: BorderRadius.circular(4)),
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'BUY',
                                  style: style.copyWith(
                                      color: ColorUtils.white,
                                      fontSize: 24,
                                      height: 1.0),
                                ),
                                Text(
                                  'OR OFFFER',
                                  style: style.copyWith(
                                      fontFamily: 'SFPro',
                                      fontSize: 11,
                                      color: ColorUtils.white),
                                )
                              ],
                            ),
                            VerticalDivider(
                              color: ColorUtils.light,
                              thickness: 1,
                              width: 25,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '\$320',
                                  style: style.copyWith(
                                    color: ColorUtils.white,
                                    fontSize: 24,
                                    height: 1.0,
                                  ),
                                ),
                                Text(
                                  'SIZE: 9.5 US',
                                  style: style.copyWith(
                                      fontFamily: 'SFPro',
                                      fontSize: 11,
                                      color: ColorUtils.white),
                                )
                              ],
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward,
                              color: ColorUtils.white,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding divider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: DividerWidget(
        color: ColorUtils.skyLighter,
      ),
    );
  }

  Widget add(BuildContext context, String name, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 56,
          decoration: BoxDecoration(
              border: Border.all(color: ColorUtils.skyDark),
              borderRadius: BorderRadius.circular(4)),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: style.copyWith(fontSize: 24, height: 2.0),
              ),
              const Icon(Icons.add)
            ],
          ),
        ),
      ),
    );
  }

  Widget details(String title, String trailing) {
    return Container(
      height: MediaQuery.of(context).size.height * .05,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListTile(
        minLeadingWidth: 0,
        dense: true,
        contentPadding: EdgeInsets.zero,
        title: Text(
          title,
          style: style.copyWith(fontFamily: 'SFPro'),
        ),
        trailing: Text(
          trailing,
          style:
              style.copyWith(fontFamily: 'SFPro', fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Widget button(String image, String text) {
    return Container(
      width: 124,
      height: 36,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: ColorUtils.skyBase)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset('assets/images/$image.svg'),
          Text(
            text,
            style: style.copyWith(
                fontFamily: 'SFPro', fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }

  showAddOwn() {
    return showModalBottomSheet(
      context: context,
      backgroundColor: ColorUtils.bg,
      isDismissible: false,
      isScrollControlled: true,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      builder: (context) {
        return const AddToOwns();
      },
    );
  }

  showSize() {
    return showModalBottomSheet(
      context: context,
      backgroundColor: ColorUtils.bg,
      isDismissible: false,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      builder: (context) {
        return const ProductSize();
      },
    );
  }
}
