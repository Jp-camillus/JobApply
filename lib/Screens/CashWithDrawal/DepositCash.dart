import 'package:fieldapp/Constants/colors.dart';
import 'package:fieldapp/Widget/DialogWidget.dart';
import 'package:fieldapp/Widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WithdrawCash extends StatelessWidget {
  const WithdrawCash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
        title: Text(
          'Withdraw Cash',
          style: TextStyle(fontSize: 0.025.sh, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter amount',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 0.005.sh,
              ),
              Container(
                height: 0.055.sh,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(87, 158, 158, 158),
                  ),
                ),
                child: TextField(
                  expands: true,
                  minLines: null,
                  maxLines: null,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 0.008.sh, horizontal: 0.04.sw),
                    hintText: 'Enter amount',
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              SizedBox(
                height: 0.6.sh,
              ),
              CustomButtonWisget(
                  ontap: () {
                    ConfirmWithdrawalDialog(
                        context, 'N 25,0000', 'N100', 'Kolade Ololade');
                  },
                  isActive: true,
                  tittle: 'Continue')
            ],
          ),
        ),
      ),
    );
  }
}
