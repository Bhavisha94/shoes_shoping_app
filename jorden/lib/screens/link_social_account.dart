import 'package:flutter/material.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/divider.dart';
import 'package:jorden/widget/social_account_btn.dart';

class LinkSocialAccount extends StatefulWidget {
  const LinkSocialAccount({super.key});

  @override
  State<LinkSocialAccount> createState() => _LinkSocialAccountState();
}

class _LinkSocialAccountState extends State<LinkSocialAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBarWidget.appBar(
          context: context,
          leading: const Icon(Icons.arrow_back_ios, size: 20),
          title:
              Text('LINK SOCIAL ACCOUNT', style: style.copyWith(fontSize: 24))),
      body: Column(
        children: [
          const DividerWidget(),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          const SocialAccountButton(text: 'LINK TO FACEBOOK', image: 'fb'),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          const SocialAccountButton(text: 'LINK TO INSTAGRAM', image: 'insta'),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          const SocialAccountButton(text: 'LINK TO TWITTER', image: 'twitter')
        ],
      ),
    );
  }
}
