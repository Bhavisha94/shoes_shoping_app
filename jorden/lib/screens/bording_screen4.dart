import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBording4 extends StatelessWidget {
  const OnBording4({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 375,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bording4.png'),
                  fit: BoxFit.fill)),
          child: Center(
            child: SvgPicture.asset('assets/images/circle.svg'),
          ),
        ),
      ],
    );
  }
}
