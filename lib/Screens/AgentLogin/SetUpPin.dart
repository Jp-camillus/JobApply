import 'package:fieldapp/Screens/AgentLogin/ConfirmPin.dart';
import 'package:fieldapp/Widget/keyboardScreenwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SetupPin extends StatelessWidget {
  const SetupPin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 1.sh,
          child: DialPad(
              OnbuttonTap: () {
                Get.to(ConfirmPin());
              },
              AppBarTittle: 'Setup Pin',
              AppBarSubTittle: 'Setup pin to access field app'),
        ),
      ),
    );
  }
}
