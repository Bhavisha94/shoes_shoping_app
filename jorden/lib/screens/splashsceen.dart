import 'package:flutter/material.dart';
import 'package:jorden/screens/onbording.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/style.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    navigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      body: Center(
        child: Text('JORDEN.',
            style: style.copyWith(color: ColorUtils.white, fontSize: 40)),
      ),
    );
  }

  navigate() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const OnBording()));
    });
  }
}
