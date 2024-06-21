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
        height: 25,
        width: 35,
        margin: EdgeInsets.all(width*0.015),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(width * 0.04),
          color: Colors.grey[50]
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
