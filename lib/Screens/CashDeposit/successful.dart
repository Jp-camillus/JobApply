import 'package:fieldapp/Widget/Receipt.dart';
import 'package:flutter/material.dart';

class successfulscreen extends StatelessWidget {
  const successfulscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReceiptWidget(iwantTwoButton: true),
    );
  }
}
