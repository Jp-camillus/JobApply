import 'dart:ui';
import 'dart:ui';

import 'package:fieldapp/Constants/Images.dart';
import 'package:fieldapp/Constants/colors.dart';
import 'package:fieldapp/Screens/CashDeposit/DashBoard.dart';
import 'package:fieldapp/Screens/CashDeposit/InputPin.dart';
import 'package:fieldapp/Screens/CashWithDrawal/InputPin.dart';
import 'package:fieldapp/Screens/ResetPassword/TemporaryPasword.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class DialogController {
  /// this[DialogController] is a class that controls all the dialogs that contain constant variables
  /// this [passwordSet] is for password set dialog
  ///  this [passwordReSet] is for password reset dialog box

  void passwordSet(BuildContext context) {
    showDialog(
      barrierColor: colors.BarierColor,
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: colors.BarierColor,
          child: Stack(
            children: [
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 1, sigmaY: 2),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    // Adjust the opacity as needed
                  ),
                ),
              ),
              Container(
                width: 0.9.sw,
                height: 0.3.sh,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 0.08.sw,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(41, 76, 175, 79),
                          shape: BoxShape.circle,
                        ),
                        child: Image(
                          image: AssetImage(AppImages.Vector),
                        ),
                      ),
                      SizedBox(
                        height: 0.03.sh,
                      ),
                      Text(
                        'Password set',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Password set successfully continue to'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('application dashboard'),
                        ],
                      ),
                      SizedBox(
                        height: 0.015.sh,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(Dashboard());
                        },
                        child: Card(
                          elevation: 20,
                          shadowColor: Color.fromARGB(41, 76, 175, 79),
                          child: Container(
                            height: 0.053.sh,
                            width: 0.3.sw,
                            alignment: Alignment.center,
                            child: Text(
                              'Continue',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: colors.dialogbuttoncolor,
                              borderRadius: BorderRadius.circular(0.01.sh),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void passwordReSet(BuildContext context) {
    showDialog(
      barrierColor: colors.BarierColor,
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: colors.BarierColor,
          child: Stack(
            children: [
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 1, sigmaY: 2),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    // Adjust the opacity as needed
                  ),
                ),
              ),
              Container(
                width: 0.9.sw,
                height: 0.35.sh,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 0.08.sw,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(47, 255, 153, 0),
                          shape: BoxShape.circle,
                        ),
                        child: Image(
                          image: AssetImage(AppImages.claritySuccess),
                        ),
                      ),
                      SizedBox(
                        height: 0.03.sh,
                      ),
                      Text(
                        'Password Reset',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Please find the temporary generated'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('password to facilitate your access to'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('your account sent to this email address'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'kr********nc@gmail.com',
                            style: TextStyle(color: colors.CustomButtonColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0.015.sh,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.offAll(TemporaryPassword());
                        },
                        child: Card(
                          elevation: 20,
                          shadowColor: Color.fromARGB(41, 76, 175, 79),
                          child: Container(
                            height: 0.053.sh,
                            width: 0.3.sw,
                            alignment: Alignment.center,
                            child: Text(
                              'Continue',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: colors.dialogbuttoncolor,
                              borderRadius: BorderRadius.circular(0.01.sh),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

/// [ConfirmdepositDialog] this is a widget that was built for confirm depositor dialog
/// it contains [Amount] and [DepositorName] variables..which is dynamic and can be changed anytime data comes from ApiDepositorName(back end)
void ConfirmdepositDialog(
    BuildContext context, String Amount, String DepositorName) {
  showDialog(
    barrierColor: colors.BarierColor,
    context: context,
    builder: (context) {
      return Dialog(
        backgroundColor: colors.BarierColor,
        child: Stack(
          children: [
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1, sigmaY: 2),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  // Adjust the opacity as needed
                ),
              ),
            ),
            Container(
              width: 0.9.sw,
              height: 0.45.sh,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 0.08.sw,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(47, 255, 153, 0),
                        shape: BoxShape.circle,
                      ),
                      child: Image(
                        image: AssetImage(AppImages.claritySuccess),
                      ),
                    ),
                    SizedBox(
                      height: 0.03.sh,
                    ),
                    Text(
                      'Confirm Deposit',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Are you sure you want to continue this'),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('deposit'),
                      ],
                    ),
                    SizedBox(
                      height: 0.03.sh,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Amount',
                          style: TextStyle(fontSize: 0.015.sh),
                        ),
                        Text(
                          Amount,
                          style: TextStyle(
                              color: colors.dialogbuttoncolor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Depositor name',
                          style: TextStyle(fontSize: 0.015.sh),
                        ),
                        Text(
                          DepositorName,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 0.03.sh,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Please confirm to continue deposit'),
                      ],
                    ),
                    SizedBox(
                      height: 0.015.sh,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: 0.053.sh,
                            width: 0.3.sw,
                            alignment: Alignment.center,
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(0.01.sh),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(InputPin());
                          },
                          child: Card(
                            elevation: 20,
                            shadowColor: Color.fromARGB(41, 76, 175, 79),
                            child: Container(
                              height: 0.053.sh,
                              width: 0.3.sw,
                              alignment: Alignment.center,
                              child: Text(
                                'Continue',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: colors.dialogbuttoncolor,
                                borderRadius: BorderRadius.circular(0.01.sh),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

/// [ConfirmWithdrawalDialog] this is a widget that was built for confirm withdrawal dialog
/// it contains [Amount],[Withdrawalfee] and [WithdrawalName]variables..which is dynamic and can be changed anytime data comes from Api(back end)
void ConfirmWithdrawalDialog(BuildContext context, String Amount,
    String Withdrawalfee, String WithdrawalName) {
  showDialog(
    barrierColor: colors.BarierColor,
    context: context,
    builder: (context) {
      return Dialog(
        backgroundColor: colors.BarierColor,
        child: Stack(
          children: [
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1, sigmaY: 2),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  // Adjust the opacity as needed
                ),
              ),
            ),
            Container(
              width: 0.9.sw,
              height: 0.5.sh,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 0.08.sw,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(47, 255, 153, 0),
                        shape: BoxShape.circle,
                      ),
                      child: Image(
                        image: AssetImage(AppImages.claritySuccess),
                      ),
                    ),
                    SizedBox(
                      height: 0.03.sh,
                    ),
                    Text(
                      'Confirm Deposit',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Are you sure you want to continue this'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('deposit'),
                      ],
                    ),
                    SizedBox(
                      height: 0.03.sh,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Amount',
                          style: TextStyle(fontSize: 0.015.sh),
                        ),
                        Text(
                          Amount,
                          style: TextStyle(
                              color: colors.CustomButtonColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Withdrawal fee',
                          style: TextStyle(fontSize: 0.015.sh),
                        ),
                        Text(
                          Withdrawalfee,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: colors.CustomButtonColor),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Withdrawal Name',
                          style: TextStyle(fontSize: 0.015.sh),
                        ),
                        Text(
                          WithdrawalName,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 0.03.sh,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Please confirm to continue deposit'),
                      ],
                    ),
                    SizedBox(
                      height: 0.015.sh,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: 0.053.sh,
                            width: 0.3.sw,
                            alignment: Alignment.center,
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(0.01.sh),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(CashWithdrawalInputPin());
                          },
                          child: Card(
                            elevation: 20,
                            shadowColor: Color.fromARGB(41, 76, 175, 79),
                            child: Container(
                              height: 0.053.sh,
                              width: 0.3.sw,
                              alignment: Alignment.center,
                              child: Text(
                                'Continue',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: colors.dialogbuttoncolor,
                                borderRadius: BorderRadius.circular(0.01.sh),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
