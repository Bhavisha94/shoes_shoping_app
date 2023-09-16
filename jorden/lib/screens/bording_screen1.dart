import 'package:flutter/material.dart';

class OnBording1 extends StatelessWidget {
  const OnBording1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .05),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 787,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bording1.png'),
                fit: BoxFit.fill)),
      ),
    );
  }
}
