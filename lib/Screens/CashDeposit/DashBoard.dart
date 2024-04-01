import 'package:fieldapp/Constants/Images.dart';
import 'package:fieldapp/Constants/colors.dart';
import 'package:fieldapp/Screens/CashDeposit/DepositMoney.dart';
import 'package:fieldapp/Screens/CashDeposit/UserProfile.dart';
import 'package:fieldapp/Screens/CashWithDrawal/CashWithdrawal.dart';
import 'package:fieldapp/Widget/FieldAgentwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Dashboardscreen extends StatelessWidget {
  const Dashboardscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            height: 0.06.sh,
            width: 0.15.sw,
            child: Image(image: AssetImage(AppImages.bell)),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: colors.UserProfile),
          ),
          Container(
            height: 0.06.sh,
            width: 0.15.sw,
            child: Icon(
              Icons.search,
              color: colors.CustomButtonColor,
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: colors.UserProfile),
          )
        ],
        title: Text('Field Agent'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 0.05.sh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(Depositmoneyscreen());
                        },
                        child: FieldAgentCard(
                          color: colors.Cashdeposit,
                          iconimage: AssetImage(AppImages.cashdeposit),
                        ),
                      ),
                      Text('Cash'),
                      Text('deposit')
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(Cashwithdrawalscreen());
                        },
                        child: FieldAgentCard(
                          color: colors.Cashwithdrawal,
                          iconimage: AssetImage(AppImages.group),
                        ),
                      ),
                      Text('Cash'),
                      Text('withdrawal')
                    ],
                  ),
                  Column(
                    children: [
                      FieldAgentCard(
                        color: colors.CreateNewCustomer,
                        iconimage: AssetImage(AppImages.createnewcustomer),
                      ),
                      Text('Create new'),
                      Text('customer')
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(Userprofilescreen());
                        },
                        child: FieldAgentCard(
                          color: colors.UserProfile,
                          iconimage: AssetImage(AppImages.UserProfile),
                        ),
                      ),
                      Text('user'),
                      Text('profile')
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 0.01.sh,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      FieldAgentCard(
                        color: colors.ApprovalStatus,
                        iconimage: AssetImage(AppImages.midapproval),
                      ),
                      Text('Approval'),
                      Text('status')
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 0.018.sh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Transaction'),
                  Container(
                    height: 0.04.sh,
                    width: 0.14.sw,
                    alignment: Alignment.center,
                    child: Text('see all'),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(0.013.sh)),
                  )
                ],
              ),
              Column(
                children: List.generate(
                  6,
                  (index) => Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'N25,000',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 0.018.sh),
                            ),
                            Text('8hours'),
                          ],
                        ),
                        title: Text(
                          'Withdrawal',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('CTRANG-47878888783'),
                      ),
                      Divider(
                        height: 0.005.sh,
                        thickness: 0.0005.sh,
                      )
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
