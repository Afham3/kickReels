import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kick_reels/utils/AppColors/color.dart';
import 'package:kick_reels/views/MyTeams/create_team.dart';
import 'package:kick_reels/views/TrainingTeam/add_player.dart';
import 'package:kick_reels/views/TrainingTeam/training_team.dart';
class ProfileMenuButton extends StatefulWidget {
  const ProfileMenuButton({super.key});

  @override
  State<ProfileMenuButton> createState() => _ProfileMenuButtonState();
}

class _ProfileMenuButtonState extends State<ProfileMenuButton> {
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
                Get.to(TrainingTeam());
              },
              title: const Text("Training Team",
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
                Get.to(CreateTeam());
              },
              title: const Text("New Team",
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
            )),
        PopupMenuItem(
            value: 3,
            child: ListTile(
              onTap: () async{

              },
              title: const Text("Settings",
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