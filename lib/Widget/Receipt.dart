import 'package:fieldapp/Constants/Images.dart';
import 'package:fieldapp/Constants/colors.dart';
import 'package:fieldapp/Screens/CashDeposit/UserProfile.dart';
import 'package:fieldapp/Widget/UserAccountWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ReceiptWidget extends StatelessWidget {
  /// this [iwantTwoButton] is use to control the buttons
  /// this [firtbordercolor] is for the first boarder of the icon image
  /// this [secondbordercolor] is for the second boarder of the icon image
  /// this [SharebuttonFuntion] is used to add functionality to the share button
  /// this [DownloadButtonFunction] is used to add functionality to the download button
  /// this [continueButtonFunction] is used to add functionality to the continue button
  ///  this [mesagecolor] is the color of the message of the reciept wether it is succesful or pending
  /// the rest like [messageName],[Amount],[DepositorNmae],[DepositAmount],[Naration] is used to make there corresponding widget dynamic incase if data is coming from the back end(API)
  const ReceiptWidget(
      {super.key,
      required this.iwantTwoButton,
      this.Amount,
      this.DepositAmount,
      this.DepositorNmae,
      this.Naration,
      this.firtbordercolor,
      this.secondbordercolor,
      this.mesagecolor,
      this.messageName,
      this.Iconimage,
      this.SharebuttonFuntion,
      this.DownloadButtonFunction,
      this.continueButtonFunction});
  final bool iwantTwoButton;
  final Color? firtbordercolor;
  final Color? secondbordercolor;
  final Color? mesagecolor;
  final Function()? SharebuttonFuntion;
  final Function()? DownloadButtonFunction;
  final Function()? continueButtonFunction;
  final ImageProvider<Object>? Iconimage;

  final String? Amount;
  final String? DepositAmount;
  final String? DepositorNmae;
  final String? Naration;
  final String? messageName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Successful',
          style: TextStyle(fontSize: 0.025.sh),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              child: Image(
                image: AssetImage(AppImages.tablex),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 0.03.sh,
              ),
              Container(
                width: 0.09.sw,
                decoration: BoxDecoration(
                  color: firtbordercolor ?? Color.fromARGB(17, 76, 175, 79),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  width: 0.06.sw,
                  decoration: BoxDecoration(
                    color: secondbordercolor ?? Color.fromARGB(41, 76, 175, 79),
                    shape: BoxShape.circle,
                  ),
                  child: Image(
                    image: Iconimage ?? AssetImage(AppImages.Vector),
                  ),
                ),
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              Text(
                messageName ?? 'Successful Deposit',
                style: TextStyle(
                  color: mesagecolor ?? colors.dialogbuttoncolor,
                ),
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              Text(
                Amount ?? 'N25,000',
                style:
                    TextStyle(fontSize: 0.026.sh, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 0.013.sh,
              ),
              Text(
                'March 22, 2024',
                style: TextStyle(
                  fontSize: 0.016.sh,
                ),
              ),
              SizedBox(
                height: 0.037.sh,
              ),
              Text(
                'Deposit details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 0.016.sh,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Amount',
                    style: TextStyle(fontSize: 0.015.sh),
                  ),
                  Text(
                    DepositAmount ?? 'N25,000',
                    style: TextStyle(
                        color: colors.dialogbuttoncolor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Depositor name',
                    style: TextStyle(fontSize: 0.015.sh),
                  ),
                  Text(
                    DepositorNmae ?? 'Kolade Ololade',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Narration',
                    style: TextStyle(fontSize: 0.015.sh),
                  ),
                  Text(
                    Naration ?? 'What is the money for',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 0.23.sh,
              ),
              Container(
                child: iwantTwoButton
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: SharebuttonFuntion,
                            child: Container(
                              height: 0.062.sh,
                              width: 0.38.sw,
                              alignment: Alignment.center,
                              child: Text(
                                'Share',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: colors.CustomButtonColor,
                                borderRadius: BorderRadius.circular(0.01.sh),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: DownloadButtonFunction,
                            child: Container(
                              height: 0.062.sh,
                              width: 0.38.sw,
                              alignment: Alignment.center,
                              child: Text(
                                'Download',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: colors.CustomButtonColor,
                                borderRadius: BorderRadius.circular(0.01.sh),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: continueButtonFunction,
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
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CashWithdrawalReciept extends StatelessWidget {
  final String? amount;
  final String? depositAmount;
  final String? withdrawFeeamount;
  final String? withdrawalName;
  final String? Narraton;
  const CashWithdrawalReciept({
    super.key,
    this.amount,
    this.depositAmount,
    this.withdrawFeeamount,
    this.withdrawalName,
    this.Narraton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Awaiting Approval',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 0.025.sh),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image(
              image: AssetImage(AppImages.tablex),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 0.03.sh,
              ),
              Image(
                image: AssetImage(AppImages.pending),
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              Text(
                'Pending Approval',
                style: TextStyle(color: colors.yelowishcolor),
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              Text(
                amount ?? 'N25,000',
                style:
                    TextStyle(fontSize: 0.026.sh, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 0.013.sh,
              ),
              Text(
                'March 22, 2024',
                style: TextStyle(
                  fontSize: 0.016.sh,
                ),
              ),
              SizedBox(
                height: 0.037.sh,
              ),
              Text(
                'Deposit details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 0.016.sh,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Amount',
                    style: TextStyle(fontSize: 0.015.sh),
                  ),
                  Text(
                    depositAmount ?? 'N25,000',
                    style: TextStyle(
                        color: colors.CustomButtonColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Withdrawal fee',
                    style: TextStyle(fontSize: 0.015.sh),
                  ),
                  Text(
                    withdrawFeeamount ?? 'N100',
                    style: TextStyle(
                        color: colors.CustomButtonColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Withdrawal name',
                    style: TextStyle(fontSize: 0.015.sh),
                  ),
                  Text(
                    withdrawalName ?? 'Kolade Ololade',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Narration',
                    style: TextStyle(fontSize: 0.015.sh),
                  ),
                  Text(
                    Narraton ?? 'What is the money for',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 0.18.sh,
              ),
              GestureDetector(
                onTap: () {
                  Get.offAll(UserProfile());
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
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
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
