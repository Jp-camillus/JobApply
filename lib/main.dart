import 'package:fieldapp/Screens/AgentLogin/Login.dart';
import 'package:fieldapp/Screens/AgentLogin/SetUpPin.dart';
import 'package:fieldapp/Screens/CashDeposit/DashBoard.dart';
import 'package:fieldapp/Screens/CashDeposit/DepositCash.dart';
import 'package:fieldapp/Screens/CashDeposit/DepositMoney.dart';
import 'package:fieldapp/Screens/CashDeposit/InputPin.dart';
import 'package:fieldapp/Screens/CashDeposit/UserProfile.dart';
import 'package:fieldapp/Screens/CashDeposit/successful.dart';
import 'package:fieldapp/Screens/CashWithDrawal/AwaitingApproval.dart';
import 'package:fieldapp/Screens/CashWithDrawal/CashWithdrawal.dart';
import 'package:fieldapp/Screens/ResetPassword/CreateNewPassword.dart';
import 'package:fieldapp/Screens/ResetPassword/ResetPassword.dart';
import 'package:fieldapp/Screens/ResetPassword/TemporaryPasword.dart';
import 'package:fieldapp/Widget/FieldAgentwidget.dart';
import 'package:fieldapp/Widget/Receipt.dart';
import 'package:fieldapp/Widget/UserAccountWidget.dart';
import 'package:fieldapp/Widget/keyboardScreenwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // for top
        // systemNavigationBarColor: Colors.green, // for bottom
      ),
      child: ScreenUtilInit(
          designSize: const Size(414, 896),
          builder: (context, child) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Global Pay',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
                useMaterial3: true,
              ),
              home: cashWithdrawal(),
            );
          }),
    );
  }
}
