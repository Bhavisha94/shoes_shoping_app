// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/divider.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBarWidget.appBar(
        context: context,
        leading: Icon(Icons.arrow_back_ios, color: ColorUtils.white, size: 20),
        title: Text(
          'Edit Profile',
          style: style.copyWith(fontSize: 24),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 96,
                  height: 96,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/profile_img.png'),
                          fit: BoxFit.fill)),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: ColorUtils.white),
                    child: Center(
                      child: SizedBox(
                        width: 11,
                        height: 11,
                        child: SvgPicture.asset(
                          'assets/images/camera.svg',
                          color: ColorUtils.inkBase,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Text(
              'KAIXA DESIGN.',
              style: style.copyWith(color: ColorUtils.white, fontSize: 24),
            ),
            Text(
              '#21091995',
              style: style.copyWith(
                  color: ColorUtils.white,
                  fontFamily: 'SFPro',
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            const DividerWidget(),
            info('User Name', 'kaixadesign', 'next', () {}),
            const DividerWidget(),
            info('Full Name', 'Kaixa Pham', 'next', () {}),
            const DividerWidget(),
            info('Phone', '+44 234 6979', 'lock', () {}),
            const DividerWidget(),
            info('Email', 'kaixa@tmrw.studio', 'lock', () {}),
            const DividerWidget(),
            info('Password', 'Change Password', 'next', () {}),
            const DividerWidget()
          ],
        ),
      ),
    );
  }

  info(String title, String value, String image, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: style.copyWith(
                  color: ColorUtils.white,
                  fontFamily: 'SFPro',
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            Row(
              children: [
                Text(
                  value,
                  style: style.copyWith(
                      color: ColorUtils.skyDark, fontFamily: 'SFPro'),
                ),
                const SizedBox(
                  width: 5,
                ),
                SvgPicture.asset('assets/images/$image.svg')
              ],
            )
          ],
        ),
      ),
    );
  }
}
