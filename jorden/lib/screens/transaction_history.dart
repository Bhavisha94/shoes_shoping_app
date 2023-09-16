import 'package:flutter/material.dart';
import 'package:jorden/screens/checkout_screen.dart';
import 'package:jorden/utils/colors.dart';
import 'package:jorden/utils/style.dart';
import 'package:jorden/widget/appbar.dart';
import 'package:jorden/widget/divider.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({super.key});

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bg,
      appBar: AppBarWidget.appBar(
          context: context,
          leading: const Icon(Icons.arrow_back_ios_new, size: 20),
          title:
              Text('Transaction History', style: style.copyWith(fontSize: 24))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const DividerWidget(),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 15,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const CheckOut())),
                      contentPadding: EdgeInsets.zero,
                      dense: true,
                      title: Text(
                        'Transaction History',
                        style: style.copyWith(
                            color: ColorUtils.white,
                            fontFamily: 'SFPro',
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        '9/21/20',
                        style: style.copyWith(
                            color: ColorUtils.lightest,
                            fontFamily: 'SFPro',
                            fontSize: 12),
                      ),
                      trailing: Text(
                        '+\$1200.08',
                        style: style.copyWith(
                            color: ColorUtils.white, fontSize: 18),
                      ),
                    ),
                    const DividerWidget()
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
