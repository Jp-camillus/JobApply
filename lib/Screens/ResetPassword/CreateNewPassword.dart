import 'package:fieldapp/Widget/DialogWidget.dart';
import 'package:fieldapp/Widget/button.dart';
import 'package:fieldapp/Widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:password_field_validator/password_field_validator.dart';

class Createnewpasswordscreen extends StatefulWidget {
  @override
  _CreatenewpasswordscreenState createState() =>
      _CreatenewpasswordscreenState();
}

class _CreatenewpasswordscreenState extends State<Createnewpasswordscreen> {
  FocusNode focusNode = FocusNode();
  FocusNode focusNoode = FocusNode();
  DialogController dialogController = DialogController();

  TextEditingController _passwordController = TextEditingController();
  bool PvisibilityController = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create new Password ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                  'After password reset you are required to create a new password'),
              SizedBox(height: 0.08.sh),
              Text(
                'Create new password',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: PvisibilityController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 0.01.sh,
                  ),
                  constraints: BoxConstraints(maxHeight: 0.05.sh),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          PvisibilityController = !PvisibilityController;
                        });
                      },
                      child: PvisibilityController
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility)),
                  hintText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0.01.sh),
                    ),
                    borderSide: BorderSide(
                      color: focusNode.hasFocus
                          ? Colors.red
                          : Color.fromARGB(80, 158, 158, 158),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0.01.sh),
                    ),
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Text(
                'Password requirement',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              PasswordFieldValidator(
                lowercaseMessage: 'one lowercase',
                uppercaseCharMessage: 'one upercase',
                numericCharMessage: 'one digit',
                specialCharacterMessage: 'one special charater',
                minLength: 8,
                uppercaseCharCount: 1,
                lowercaseCharCount: 1,
                numericCharCount: 1,
                specialCharCount: 1,
                defaultColor: Colors.black,
                successColor: Colors.green,
                failureColor: Colors.red,
                controller: _passwordController,
              ),
              SizedBox(height: 20),
              Text(
                'Confirm new password',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextFormField(
                obscureText: PvisibilityController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 0.01.sh,
                  ),
                  constraints: BoxConstraints(maxHeight: 0.05.sh),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          PvisibilityController = !PvisibilityController;
                        });
                      },
                      child: PvisibilityController
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility)),
                  hintText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0.01.sh),
                    ),
                    borderSide: BorderSide(
                      color: focusNode.hasFocus
                          ? Colors.red
                          : Color.fromARGB(80, 158, 158, 158),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0.01.sh),
                    ),
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 0.15.sh,
              ),
              CustomButtonWisget(
                isActive: true,
                tittle: 'continue',
                ontap: () {
                  dialogController.passwordSet(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
