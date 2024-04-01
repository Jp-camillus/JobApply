import 'package:fieldapp/Constants/Images.dart';
import 'package:fieldapp/Constants/colors.dart';
import 'package:fieldapp/Widget/Receipt.dart';
import 'package:flutter/material.dart';

class Awaitingaprrovalscreen extends StatelessWidget {
  const Awaitingaprrovalscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReceiptWidget(
        messageName: 'Pending Approval',
        mesagecolor: colors.yelowishcolor,
        firtbordercolor: Colors.transparent,
        secondbordercolor: Colors.transparent,
        iwantTwoButton: false,
        Iconimage: AssetImage(AppImages.pending),
      ),
    );
  }
}
