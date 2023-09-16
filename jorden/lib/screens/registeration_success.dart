import 'package:flutter/material.dart';
import 'package:jorden/screens/login.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/next_btn.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      body: SafeArea(
        child: Column(
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .05),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 564,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/succes.png'),
                      fit: BoxFit.fill)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 216,
                    child: Text(
                      'REGISTER SUCCESSFULLY!',
                      style: style.copyWith(
                        color: ColorUtils.white,
                        fontSize: 48,
                        height: 1.0,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Login())),
                    child: const NextBtn(
                      width: 48,
                      height: 48,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
