import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jorden/screens/registeration_success.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/size.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/button.dart';
import 'package:jorden/widget/textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool showPsw = false, showConPsw = false;
  TextEditingController email = TextEditingController();

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
                'SIGN UP.',
                style: style.copyWith(
                  color: Colors.white,
                  fontSize: 48,
                ),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              TextFieldWidget(
                label: 'Your email address',
                obsecure: true,
                textInputType: TextInputType.emailAddress,
                controller: email,
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
                  height: MediaQuery.of(context).size.height * .015),
              TextFieldWidget(
                label: 'Re-Enter your password',
                obsecure: true,
                suffix: InkWell(
                  onTap: () {
                    setState(() {
                      showConPsw = !showConPsw;
                    });
                  },
                  child: SizedBox(
                    width: 15,
                    height: 15,
                    child: Center(
                        child: SvgPicture.asset(
                            'assets/images/${showConPsw ? 'eye-off' : 'eye'}.svg')),
                  ),
                ),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .02),
              Button(
                text: 'SIGN UP',
                onCallBack: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SuccessScreen())),
              )
            ],
          ),
        ),
      ),
    );
  }
}
