import 'package:fieldapp/Constants/Images.dart';
import 'package:fieldapp/Constants/colors.dart';
import 'package:fieldapp/Widget/Receipt.dart';
import 'package:flutter/material.dart';

class CashWithdrawalAwaitingAprroval extends StatelessWidget {
  const CashWithdrawalAwaitingAprroval({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CashWithdrawalReciept(),
    );
  }
}
