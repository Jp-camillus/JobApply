import 'package:fieldapp/Screens/CashDeposit/successful.dart';
import 'package:fieldapp/Widget/Keyboard2.dart';
import 'package:fieldapp/Widget/keyboardScreenwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Inputpinscreen extends StatelessWidget {
  const Inputpinscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: h.toDouble(),
          width: w.toDouble(),
          child: DialPad2(OnbuttonTap: () {
            Get.to(successfulscreen());
          }),
        ),
      ),
    );
  }
}
