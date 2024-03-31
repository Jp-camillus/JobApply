import 'package:fieldapp/Widget/DialogWidget.dart';
import 'package:fieldapp/Widget/button.dart';
import 'package:fieldapp/Widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  DialogController dialogcontroller = DialogController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 0.1.sh,
              ),
              Text(
                'Reset Password',
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 0.034.sh),
              ),
              SizedBox(
                height: 0.05,
              ),
              Text(
                'Please input email address to validate password reset',
              ),
              SizedBox(
                height: 0.15.sh,
              ),
              Text('Email address'),
              TextFeildWithNoIcon(
                Tittle: 'Email address',
              ),
              SizedBox(
                height: 0.2.sh,
              ),
              CustomButtonWisget(
                tittle: 'Reset Password',
                isActive: true,
                ontap: () {
                  dialogcontroller.passwordReSet(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
