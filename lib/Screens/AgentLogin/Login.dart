import 'package:fieldapp/Screens/AgentLogin/SetUpPin.dart';
import 'package:fieldapp/Screens/ResetPassword/ResetPassword.dart';
import 'package:fieldapp/Widget/button.dart';
import 'package:fieldapp/Widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isButtonEnabled = false;
  FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            onChanged: _updateButtonState,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 0.1.sh,
                ),
                Text(
                  'Login',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 0.034.sh),
                ),
                SizedBox(
                  height: 0.05,
                ),
                Text(
                  'Please enter your details to login',
                ),
                SizedBox(
                  height: 0.1.sh,
                ),
                Text('Email address'),
                TextFeildWithNoIcon(
                  textvalidator: (value) {
                    if (value!.isEmpty) {
                      return 'field is required';
                    } else {
                      return null;
                    }
                  },
                  textEditingController: _usernameController,
                  Tittle: 'Email address',
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                Text('Password'),
                TextFeildWithIcon(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'field is required';
                    } else {
                      return null;
                    }
                  },
                  focusnode: _focusNode,
                  textEditingController: _passwordController,
                  tittle: 'Password',
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Text('Reset Password'),
                  ),
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                CustomButtonWisget(
                  ontap: _isButtonEnabled ? _login : null,
                  tittle: 'Login',
                  isActive: _isButtonEnabled,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _updateButtonState() {
    setState(() {
      _isButtonEnabled = _formKey.currentState!.validate();
    });
  }

  void _login() {
    Get.to(ResetPassword());
  }
}
