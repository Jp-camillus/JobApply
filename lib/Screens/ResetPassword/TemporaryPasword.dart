import 'package:fieldapp/Screens/ResetPassword/CreateNewPassword.dart';
import 'package:fieldapp/Widget/button.dart';
import 'package:fieldapp/Widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TemporaryPassword extends StatefulWidget {
  const TemporaryPassword({super.key});

  @override
  State<TemporaryPassword> createState() => _TemporaryPasswordState();
}

class _TemporaryPasswordState extends State<TemporaryPassword> {
  FocusNode _focusNode = FocusNode();
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
                'Login',
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 0.034.sh),
              ),
              SizedBox(
                height: 0.05,
              ),
              Text(
                'Please sign in with your email and the temporary password',
              ),
              SizedBox(
                height: 0.1.sh,
              ),
              Text('Email address'),
              TextFeildWithNoIcon(
                Tittle: 'Email address',
              ),
              SizedBox(
                height: 0.03.sh,
              ),
              Text('Temporary Password'),
              TextFeildWithIcon(
                focusnode: _focusNode,
                tittle: 'Password',
              ),
              SizedBox(
                height: 0.1.sh,
              ),
              CustomButtonWisget(
                  ontap: () {
                    Get.offAll(CreateNewPassword());
                  },
                  tittle: 'Create new password',
                  isActive: true),
            ],
          ),
        ),
      ),
    );
  }
}
