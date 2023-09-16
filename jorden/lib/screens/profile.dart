import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/screens/buying.dart';
import 'package:jorden/screens/edit_profile.dart';
import 'package:jorden/screens/profile_selling.dart';
import 'package:jorden/screens/want.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/divider.dart';
import 'package:jorden/widget/profile_option.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: 64,
                height: 64,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/profile_img.png'),
                        fit: BoxFit.fill)),
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'KAIXA DESIGN.',
                        style: style.copyWith(
                            fontSize: 24, color: ColorUtils.white),
                      ),
                      Text(
                        'kaixadesign@gmail.com',
                        style: style.copyWith(
                            color: ColorUtils.lighter, fontFamily: 'SFPro'),
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const EditProfile())),
                    child: Container(
                      width: 122,
                      height: 32,
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorUtils.light),
                          borderRadius: BorderRadius.circular(4)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Edit Profile',
                            style: style.copyWith(
                                color: ColorUtils.white, fontFamily: 'SFPro'),
                          ),
                          SvgPicture.asset('assets/images/arrow.svg')
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            const DividerWidget(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProfileOption(
                  image: 'buy',
                  name: 'Buying',
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Buying())),
                ),
                ProfileOption(
                  image: 'sell',
                  name: 'Selling',
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const ProfileSelling())),
                ),
                ProfileOption(
                  image: 'want',
                  name: 'Want',
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const WantOwn())),
                ),
                ProfileOption(
                  image: 'own',
                  name: 'Own',
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const WantOwn())),
                )
              ],
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  const DividerWidget(),
                  option('settings', 'Setting', () {}),
                  const DividerWidget(),
                  option('help', 'Help', () {}),
                  const DividerWidget(),
                  option('work', 'How It Works', () {}),
                  const DividerWidget(),
                  option('help', 'Currency: US\$ USD', () {}),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  ListTile option(String image, String text, VoidCallback onTap) {
    return ListTile(
      leading: SvgPicture.asset('assets/images/$image.svg'),
      horizontalTitleGap: 0,
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
      dense: true,
      title: Text(
        text,
        style: style.copyWith(
            color: ColorUtils.white,
            fontFamily: 'SFPro',
            fontSize: 16,
            fontWeight: FontWeight.w600),
      ),
      trailing: SvgPicture.asset('assets/images/next.svg'),
    );
  }
}
