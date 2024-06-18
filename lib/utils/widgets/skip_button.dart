import 'package:flutter/material.dart';
import 'package:kick_reels/utils/AppColors/color.dart';
import 'package:get/get.dart';

import '../../views/CreateAccount/create_account.dart';
class SkipButton extends StatefulWidget {
  const SkipButton({super.key});

  @override
  State<SkipButton> createState() => _SkipButtonState();
}

class _SkipButtonState extends State<SkipButton> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return InkWell(
      onTap: ()
      {
        Get.to(const CreateAccount());
      },
      child: Container(
        height: height*0.05,
        width: width*0.1,
        margin: EdgeInsets.all(width*0.015),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(width * 0.04),
          color: Color(0xE0DDDDFF),
        ),
        child: const Text("Skip",
          style: TextStyle(
            color: AppColors.primaryTextTextColor,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
