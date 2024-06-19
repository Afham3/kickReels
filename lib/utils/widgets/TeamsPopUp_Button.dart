
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kick_reels/utils/AppColors/color.dart';

class PopUpTeamsButton extends StatefulWidget {
  const PopUpTeamsButton({super.key});

  @override
  State<PopUpTeamsButton> createState() => _PopUpTeamsButtonState();
}

class _PopUpTeamsButtonState extends State<PopUpTeamsButton> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert,color: AppColors.blackColor),
      color: AppColors.whiteColor,
      itemBuilder: (context) =>[
        PopupMenuItem(
            value: 1,
            child: ListTile(
              onTap: ()
              {
                Navigator.pop(context);
              },
              title: const Text("Create Team",
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
            )),
        PopupMenuItem(
            value: 2,
            child: ListTile(
              onTap: () async{

              },
              title: const Text("Join Existing Team",
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
            )),
      ],

    );
  }
}

