import 'package:fieldapp/Constants/colors.dart';
import 'package:fieldapp/Screens/CashWithDrawal/AwaitingApproval.dart';
import 'package:fieldapp/Widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CashwithdrawalinputPinscreen extends StatelessWidget {
  final Function()? bottomfunction;
  CashwithdrawalinputPinscreen({
    Key? key,
    this.bottomfunction,
    this.OnbuttonTap,
  }) : super(key: key);

  final TextEditingController _pinOneController = TextEditingController();
  final Function()? OnbuttonTap;

  final TextEditingController _pinTwoController = TextEditingController();
  final TextEditingController _pinThreeController = TextEditingController();
  final TextEditingController _pinFourController = TextEditingController();
  final TextEditingController _pinFiveController = TextEditingController();
  final TextEditingController _pinsixController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Wrap your DialPad in a SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Container(
            height: 1.sh,
            child: DialPadWidget(
              pinfiveController: _pinFiveController,
              pinsixController: _pinsixController,
              pinOneController: _pinOneController,
              pinTwoController: _pinTwoController,
              pinThreeController: _pinThreeController,
              pinFourController: _pinFourController,
              button: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.1.sw),
                child: CustomButtonWisget(
                  isActive: true,
                  tittle: 'Submit',
                  ontap: () {
                    Get.to(CashwithdrawalawaitingAprrovalscreen());
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DialPadWidget extends StatelessWidget {
  DialPadWidget({
    Key? key,
    required this.pinOneController,
    required this.pinTwoController,
    required this.pinThreeController,
    required this.pinFourController,
    this.button,
    required this.pinfiveController,
    required this.pinsixController,
  }) : super(key: key);

  final TextEditingController pinOneController;
  final TextEditingController pinTwoController;
  final TextEditingController pinThreeController;
  final TextEditingController pinFourController;
  final TextEditingController pinfiveController;
  final TextEditingController pinsixController;

  final Widget? button;

  final List<String> currentPin = ['', '', '', '', '', ''];

  final outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: Colors.transparent),
  );

  int pinIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Input pin',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Enter the Otp sent to your phone Number'),
            Text('Number*****572'),
            Container(
              alignment: const Alignment(0, 0.5),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(height: 0.07.sh),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      PINNumber(
                        outlineInputBorder: outlineInputBorder,
                        textEditingController: pinOneController,
                      ),
                      PINNumber(
                        outlineInputBorder: outlineInputBorder,
                        textEditingController: pinTwoController,
                      ),
                      PINNumber(
                        outlineInputBorder: outlineInputBorder,
                        textEditingController: pinThreeController,
                      ),
                      PINNumber(
                        outlineInputBorder: outlineInputBorder,
                        textEditingController: pinFourController,
                      ),
                      PINNumber(
                        outlineInputBorder: outlineInputBorder,
                        textEditingController: pinfiveController,
                      ),
                      PINNumber(
                        outlineInputBorder: outlineInputBorder,
                        textEditingController: pinsixController,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0.05.sh,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      KeyboardNumber(
                        n: 1.toString(),
                        onPressed: () {
                          pinIndexSetup('1');
                        },
                      ),
                      KeyboardNumber(
                        n: 2.toString(),
                        onPressed: () {
                          pinIndexSetup('2');
                        },
                      ),
                      KeyboardNumber(
                        n: 3.toString(),
                        onPressed: () {
                          pinIndexSetup('3');
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      KeyboardNumber(
                        n: 4.toString(),
                        onPressed: () {
                          pinIndexSetup('4');
                        },
                      ),
                      KeyboardNumber(
                        n: 5.toString(),
                        onPressed: () {
                          pinIndexSetup('5');
                        },
                      ),
                      KeyboardNumber(
                        n: 6.toString(),
                        onPressed: () {
                          pinIndexSetup('6');
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      KeyboardNumber(
                        n: 7.toString(),
                        onPressed: () {
                          pinIndexSetup('7');
                        },
                      ),
                      KeyboardNumber(
                        n: 8.toString(),
                        onPressed: () {
                          pinIndexSetup('8');
                        },
                      ),
                      KeyboardNumber(
                        n: 9.toString(),
                        onPressed: () {
                          pinIndexSetup('9');
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 0.35.sw,
                      ),
                      KeyboardNumber(
                        n: 0.toString(),
                        onPressed: () {
                          pinIndexSetup('0');
                        },
                      ),
                      SizedBox(
                        width: 0.02.sw,
                      ),
                      SizedBox(
                        child: MaterialButton(
                          onPressed: () => clearPin(),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: const Text(
                            'Delete',
                            style: TextStyle(fontSize: 20, color: Colors.red),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Gap(30.h),
            button ?? Container(),
          ],
        ),
      ),
    );
  }

  void clearPin() {
    if (pinIndex == 0) {
      pinIndex = 0;
    } else if (pinIndex == 6) {
      setPin(pinIndex, '');
      currentPin[pinIndex - 1] = '';
      pinIndex--;
    } else {
      setPin(pinIndex, '');
      currentPin[pinIndex - 1] = '';
      pinIndex--;
    }
  }

  void pinIndexSetup(String text) {
    if (pinIndex == 0) {
      pinIndex = 1;
    } else if (pinIndex < 6) {
      pinIndex++;
    }
    setPin(pinIndex, text);
    currentPin[pinIndex - 1] = text;
    String strPin = "";
    for (var e in currentPin) {
      strPin += e;
    }
    if (pinIndex == 6) {
      print(strPin); // This is your complete pin
      // You can perform your action here, such as calling a function with the pin
      // For example: bottomfunction?.call(strPin);
    }
  }

  void setPin(int n, String text) {
    switch (n) {
      case 1:
        pinOneController.text = text;
        break;
      case 2:
        pinTwoController.text = text;
        break;
      case 3:
        pinThreeController.text = text;
        break;
      case 4:
        pinFourController.text = text;
        break;
      case 5:
        pinfiveController.text = text;
        break;
      case 6:
        pinsixController.text = text;
        break;
      default:
        break;
    }
  }
}

class KeyboardNumber extends StatelessWidget {
  final String n;
  final VoidCallback onPressed;

  KeyboardNumber({required this.n, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: MaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60),
        ),
        child: Text(
          n,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class PINNumber extends StatelessWidget {
  final TextEditingController textEditingController;
  final OutlineInputBorder outlineInputBorder;

  PINNumber(
      {required this.textEditingController, required this.outlineInputBorder});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      child: TextField(
        controller: textEditingController,
        enabled: false,
        obscureText: true,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16),
          border: outlineInputBorder,
          filled: true,
          fillColor: Colors.white,
        ),
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
