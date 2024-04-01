import 'package:fieldapp/Constants/colors.dart';
import 'package:fieldapp/Widget/DialogWidget.dart';
import 'package:fieldapp/Widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Depositcashscreen extends StatelessWidget {
  const Depositcashscreen({super.key});

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
          'Deposit cash',
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
                height: 0.05.sh,
              ),
              Text(
                'Depositor full name',
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
                  maxLines: null,
                  minLines: null,
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
                height: 0.05.sh,
              ),
              Text(
                'Naration (optional)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 0.005.sh,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(87, 158, 158, 158))),
                alignment: Alignment.topLeft,
                height: 0.15.sh,
                child: TextField(
                  textAlignVertical: TextAlignVertical.top,
                  expands: true,
                  maxLines: null,
                  minLines: null,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 0.008.sh, horizontal: 0.04.sw),
                    hintText: 'what is the money for?',
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              SizedBox(
                height: 0.1.sh,
              ),
              CustomButtonWisget(
                  ontap: () {
                    ConfirmdepositDialog(
                        context, 'N 25,0000', 'Kolade Ololade');
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
