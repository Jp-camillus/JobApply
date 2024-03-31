import 'package:fieldapp/Constants/Images.dart';
import 'package:fieldapp/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FieldAgentCard extends StatelessWidget {
  final Color? color;
  final ImageProvider<Object>? iconimage;
  const FieldAgentCard({super.key, this.color, this.iconimage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.08.sh,
      width: 0.17.sw,
      child: Image(image: iconimage ?? AssetImage(AppImages.midapproval)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0.02.sh), color: color),
    );
  }
}
