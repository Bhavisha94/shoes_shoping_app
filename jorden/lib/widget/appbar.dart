import 'package:flutter/material.dart';

class AppBarWidget {
  static appBar(
      {required BuildContext context,
      required Widget leading,
      Widget? title,
      List<Widget>? action}) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: InkWell(onTap: () => Navigator.pop(context), child: leading),
      centerTitle: true,
      title: title,
      actions: action,
      leadingWidth: MediaQuery.of(context).size.width * .18,
    );
  }
}
