import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/model/search.dart';
import 'package:jorden/screens/filter.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/list.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/gallary_option.dart';
import 'package:jorden/widget/search_item.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<String> tabs = ['New', 'Used', 'Trending', 'Instant', 'Under Retail'];
  TextEditingController controller = TextEditingController();
  List<SearchModel> list = [];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: ColorUtils.bg,
        resizeToAvoidBottomInset: false,
        appBar: AppBarWidget.appBar(
          context: context,
          leading: const Icon(Icons.arrow_back_ios, size: 20),
          title: Text(
            'SEARCH',
            style: style.copyWith(fontSize: 24),
          ),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 271,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: ColorUtils.light, width: 1),
                    ),
                    child: IntrinsicHeight(
                      child: Row(
                        children: [
                          SizeUtils.horizontalSpacing(
                              width: MediaQuery.of(context).size.width * .03),
                          SizedBox(
                            width: 12,
                            height: 12,
                            child: SvgPicture.asset('assets/images/search.svg'),
                          ),
                          SizeUtils.horizontalSpacing(
                              width: MediaQuery.of(context).size.width * .03),
                          Expanded(
                              child: TextField(
                            style: style.copyWith(
                                fontFamily: 'SFPro', color: ColorUtils.white),
                            controller: controller,
                            onChanged: (value) => search(value),
                            decoration: InputDecoration(
                                isDense: true,
                                hintText: 'Search',
                                hintStyle: style.copyWith(
                                    fontFamily: 'SFPro',
                                    color: ColorUtils.lighter),
                                border: const UnderlineInputBorder(
                                    borderSide: BorderSide.none),
                                contentPadding: const EdgeInsets.all(0)),
                          )),
                          SizeUtils.horizontalSpacing(
                              width: MediaQuery.of(context).size.width * .03),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: VerticalDivider(
                              color: ColorUtils.lightest,
                            ),
                          ),
                          InkWell(
                              onTap: () => showOptions(),
                              child:
                                  SvgPicture.asset('assets/images/camera.svg')),
                          SizeUtils.horizontalSpacing(
                              width: MediaQuery.of(context).size.width * .03),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Filter())),
                    child: Column(
                      children: [
                        Text(
                          'FILTER',
                          style: style.copyWith(
                              fontSize: 18,
                              color: ColorUtils.lightest,
                              decoration: TextDecoration.underline),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .02),
              list.isNotEmpty
                  ? Expanded(
                      child: Container(
                        color: ColorUtils.white,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Top Results',
                                style: style.copyWith(
                                    fontFamily: 'SFPro',
                                    fontWeight: FontWeight.w600,
                                    color: ColorUtils.inkBase),
                              ),
                              ListView.builder(
                                itemCount: list.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 60,
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/${list[index].image}.png',
                                              width: 72,
                                              height: 59,
                                              fit: BoxFit.fill,
                                            ),
                                            SizeUtils.horizontalSpacing(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .05),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  searchList[index].text,
                                                  style: style.copyWith(
                                                      fontFamily: 'SFPro',
                                                      color:
                                                          ColorUtils.inkBase),
                                                ),
                                                SizeUtils.verticalSpacing(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            .005),
                                                Text(
                                                  'White & Grey / 2021',
                                                  style: style.copyWith(
                                                      fontFamily: 'SFPro',
                                                      fontSize: 12,
                                                      color:
                                                          ColorUtils.skyDark),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      SizeUtils.verticalSpacing(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .01),
                                      const Divider(
                                        height: 20,
                                        thickness: 2,
                                      ),
                                      SizeUtils.verticalSpacing(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .01)
                                    ],
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  : Expanded(
                      child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: ColorUtils.skyLighter,
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * .08,
                            color: ColorUtils.white,
                            child: TabBar(
                              tabs: tabs
                                  .map((e) => Tab(
                                        text: e,
                                      ))
                                  .toList(),
                              unselectedLabelColor: ColorUtils.lightest,
                              isScrollable: true,
                              labelColor: ColorUtils.inkBase,
                              indicatorWeight: 2,
                              indicatorColor: ColorUtils.inkBase,
                              labelStyle: style.copyWith(
                                  fontFamily: 'SFPro',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                              unselectedLabelStyle:
                                  style.copyWith(fontFamily: 'SFPro'),
                              indicator: const UnderlineTabIndicator(
                                borderSide: BorderSide(
                                  width: 2.0,
                                ),
                              ),
                              padding: EdgeInsets.zero,
                              dividerColor: ColorUtils.skyLighter,
                            ),
                          ),
                          const Expanded(
                              child: TabBarView(children: [
                            SearchItem(),
                            SearchItem(),
                            SearchItem(),
                            SearchItem(),
                            SearchItem(),
                          ]))
                        ],
                      ),
                    )),
            ],
          ),
        ),
      ),
    );
  }

  showOptions() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xff58585a).withOpacity(.1),
      elevation: 0,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: 168,
              color: ColorUtils.bg,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  GallaryOption(text: 'TAKE PHOTO', image: 'camera2'),
                  GallaryOption(text: 'PHOTO LIBRARY', image: 'folder'),
                ],
              ),
            )
          ],
        );
      },
    );
  }

  search(String keyword) {
    if (keyword.isEmpty) {
      setState(() {
        list.clear();
      });
    } else {
      list.addAll(searchList);
      list.where((element) => element.text.contains(keyword)).toList();

      setState(() {});
    }
  }
}
