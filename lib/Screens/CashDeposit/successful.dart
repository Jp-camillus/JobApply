import 'package:fieldapp/Widget/Receipt.dart';
import 'package:flutter/material.dart';

class Successful extends StatelessWidget {
  const Successful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReceiptWidget(iwantTwoButton: true),
    );
  }
}
