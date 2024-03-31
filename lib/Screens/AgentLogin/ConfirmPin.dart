import 'package:fieldapp/Screens/CashDeposit/DashBoard.dart';
import 'package:fieldapp/Widget/keyboardScreenwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ConfirmPin extends StatelessWidget {
  const ConfirmPin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 1.sh,
          child: DialPad(
              OnbuttonTap: () {
                Get.to(Dashboard());
              },
              AppBarTittle: 'Confirm Pin',
              AppBarSubTittle: 'Confirm your access '),
        ),
      ),
    );
  }
}
