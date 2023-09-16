import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/screens/login_success.dart';
import 'package:jorden/screens/reset_password.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/button.dart';
import 'package:jorden/widget/textfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showPsw = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBarWidget.appBar(
        context: context,
        leading: const Icon(Icons.arrow_back_ios, size: 20),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'LOGIN.',
                style: style.copyWith(
                  color: Colors.white,
                  fontSize: 48,
                ),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              const TextFieldWidget(
                label: 'Your email address',
                obsecure: true,
                textInputType: TextInputType.emailAddress,
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              TextFieldWidget(
                label: 'Enter your password',
                obsecure: true,
                suffix: InkWell(
                  onTap: () {
                    setState(() {
                      showPsw = !showPsw;
                    });
                  },
                  child: SizedBox(
                    width: 15,
                    height: 15,
                    child: Center(
                        child: SvgPicture.asset(
                            'assets/images/${showPsw ? 'eye-off' : 'eye'}.svg')),
                  ),
                ),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .005),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ResetPassword())),
                    child: Text(
                      'Forgot Password',
                      style: style.copyWith(
                          fontFamily: 'SFPro', color: ColorUtils.lighter),
                    ),
                  )
                ],
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .07),
              Button(
                text: 'LOGIN',
                onCallBack: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const LoginSuccess())),
              )
            ],
          ),
        ),
      ),
    );
  }
}
