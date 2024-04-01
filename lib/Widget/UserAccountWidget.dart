import 'package:fieldapp/Constants/Images.dart';
import 'package:fieldapp/Constants/colors.dart';
import 'package:fieldapp/Screens/CashDeposit/DepositCash.dart';
import 'package:fieldapp/Screens/CashWithDrawal/DepositCash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({super.key});

  @override
  State<UserAccount> createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  bool showbalance = false;
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
        title: Text(
          'User Account',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 0.025.sh),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                height: 0.16.sh,
                width: w.toDouble(),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Account balance',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 0.02.sw,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                showbalance = !showbalance;
                              });
                            },
                            child: Container(
                              child: showbalance
                                  ? Icon(
                                      Icons.visibility,
                                      color: Colors.white,
                                    )
                                  : Icon(
                                      Icons.visibility_off,
                                      color: Colors.white,
                                    ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        child: showbalance
                            ? Text(
                                'N162,365.90',
                                style: TextStyle(
                                    fontSize: 0.025.sh,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            : Text(
                                '****',
                                style: TextStyle(
                                    fontSize: 0.025.sh,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                      ),
                      SizedBox(
                        height: 0.008.sh,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(Depositcashscreen());
                            },
                            child: Card(
                              elevation: 20,
                              shadowColor: Color.fromARGB(41, 76, 175, 79),
                              child: Container(
                                height: 0.045.sh,
                                width: 0.3.sw,
                                alignment: Alignment.center,
                                child: Text(
                                  'Deposit Cash',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(0.01.sh),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(WithdrawCash());
                            },
                            child: Card(
                              elevation: 20,
                              shadowColor: Color.fromARGB(41, 76, 175, 79),
                              child: Container(
                                height: 0.045.sh,
                                width: 0.3.sw,
                                alignment: Alignment.center,
                                child: Text(
                                  'Withdraw Cash',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(0.01.sh),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0.02.sh),
                  color: colors.CustomButtonColor,
                ),
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              Container(
                height: 0.16.sh,
                width: w.toDouble(),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'First name',
                              style: TextStyle(fontSize: 0.015.sh),
                            ),
                            Text(
                              'Victor',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Last name',
                              style: TextStyle(fontSize: 0.015.sh),
                            ),
                            Text(
                              'Okibe',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Date of birth',
                              style: TextStyle(fontSize: 0.015.sh),
                            ),
                            Text(
                              '20-05-2021',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.001.sw),
                  borderRadius: BorderRadius.circular(0.02.sh),
                ),
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
                    child: Text('See All'),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(0.01.sh)),
                  )
                ],
              ),
              Column(
                children: List.generate(
                  6,
                  (index) => ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 05),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'N25,000',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 0.018.sh),
                        ),
                        Text('8hours'),
                      ],
                    ),
                    leading: Image(image: AssetImage(AppImages.gtbank)),
                    title: Text(
                      'TRF from christopher',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('CTRANG-47878888783'),
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
