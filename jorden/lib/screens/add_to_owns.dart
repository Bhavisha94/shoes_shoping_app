import 'package:flutter/material.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/button.dart';
import 'package:jorden/widget/divider.dart';

class AddToOwns extends StatefulWidget {
  const AddToOwns({super.key});

  @override
  State<AddToOwns> createState() => _AddToOwnsState();
}

class _AddToOwnsState extends State<AddToOwns> {
  int qty1 = 2, qty2 = 0, qty3 = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .7,
      child: Column(
        children: [
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ADD TO OWNS',
                  style: style.copyWith(color: ColorUtils.white, fontSize: 24),
                ),
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.close,
                    color: ColorUtils.white,
                  ),
                )
              ],
            ),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .02),
          SizedBox(
            width: MediaQuery.of(context).size.width * .9,
            height: 100,
            child: Row(
              children: [
                Container(
                  width: 128,
                  height: 100,
                  color: ColorUtils.white,
                  child: Image.asset(
                    'assets/images/product.png',
                  ),
                ),
                SizeUtils.horizontalSpacing(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Nike Air Jordan 4 Retro "White Oreo" Ct8527-100 ',
                        style: style.copyWith(
                            color: ColorUtils.white, fontFamily: 'SFPro'),
                      ),
                      Container(
                        width: 12,
                        height: 1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: ColorUtils.skyDark),
                      ),
                      Text(
                        'Raging Bull White 2021',
                        style: style.copyWith(
                            color: ColorUtils.lightest,
                            fontFamily: 'SFPro',
                            fontSize: 12),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .025),
          SizedBox(
            width: MediaQuery.of(context).size.width * .9,
            child: Text(
              'Select your size to get notifications for price drops and restocks',
              style:
                  style.copyWith(color: ColorUtils.white, fontFamily: 'SFPro'),
            ),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          const DividerWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              children: [
                size('35.5', '3.5', qty1.toString(), () {
                  setState(() {
                    qty1--;
                  });
                }, () {
                  qty1++;
                }),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                const DividerWidget(),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                size('US 3.5', '4.0', qty2.toString(), () {
                  setState(() {
                    qty2--;
                  });
                }, () {
                  qty2++;
                }),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                const DividerWidget(),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                size('US 3.5', '4.5', qty3.toString(), () {
                  setState(() {
                    qty3--;
                  });
                }, () {
                  qty3++;
                })
              ],
            ),
          ),
          const DividerWidget(),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          const Button(text: 'SAVE')
        ],
      ),
    );
  }

  size(String text, String size, String qty, VoidCallback incre,
      VoidCallback decre) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .15,
          child: Column(
            children: [
              Text(
                text,
                style: style.copyWith(
                    color: ColorUtils.white,
                    fontFamily: 'SFPro',
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              Text(
                size,
                style: style.copyWith(
                    color: ColorUtils.lightest,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    fontFamily: 'SFPro'),
              )
            ],
          ),
        ),
        Container(
          width: 73,
          height: 32,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: ColorUtils.inkBase),
          child: Center(
            child: Text(
              qty,
              style: style.copyWith(
                  color: ColorUtils.white, fontSize: 18, height: 1.5),
            ),
          ),
        ),
        Container(
          width: 72,
          height: 32,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: ColorUtils.light)),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: incre,
                  child: Icon(
                    Icons.remove,
                    color: ColorUtils.light,
                    size: 20,
                  ),
                ),
                VerticalDivider(
                  color: ColorUtils.light,
                  thickness: 1,
                ),
                InkWell(
                  onTap: decre,
                  child: Icon(
                    Icons.add,
                    color: ColorUtils.white,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
