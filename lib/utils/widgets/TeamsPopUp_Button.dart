
import 'dart:ui';
import 'package:emerge_alert_dialog/emerge_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kick_reels/utils/AppColors/color.dart';
import 'package:kick_reels/views/MyTeams/create_team.dart';

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
                Get.to(CreateTeam());
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
                _showMyDialog(context);
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

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return EmergeAlertDialog(
        alignment: Alignment.bottomCenter,
        emergeAlertDialogOptions: EmergeAlertDialogOptions(
            backgroundColor: AppColors.whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            title: const Text("Join Existing Team",style: TextStyle(
              color: AppColors.yellowColor,
              fontWeight: FontWeight.bold,
              fontSize: 21,
            ),),
            titlePadding: const EdgeInsets.only(left: 30,top: 10),
            content:  Column(
              children: [
                 const Text("Enter a name for your new game",
                  style:  TextStyle(
                    color: AppColors.secondaryTextColor,
                    fontSize: 13.5,
                    fontWeight: FontWeight.w500,
                  ),),
                const SizedBox(height: 5,),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    style: const TextStyle(fontWeight: FontWeight.w300,color: AppColors.secondaryTextColor),
                    keyboardType: TextInputType.text,
                    decoration:  InputDecoration(
                      hintText: "Enter Team Code",
                      hintStyle: const TextStyle(fontSize: 13,fontWeight: FontWeight.w300,color: AppColors.secondaryTextColor),
                      fillColor: Colors.grey[100],
                      filled: true,
                      border:  const OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.textFieldDefaultBorderColor),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      focusedBorder: const  OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.greenColor),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      errorBorder: const  OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.redColor),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      enabledBorder: const  OutlineInputBorder(
                        borderSide: BorderSide(color:Colors.black12),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: const Text("Cancel",
                style: TextStyle(
                  color: AppColors.blueColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),)),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: const Text("Join",
                style: TextStyle(
                  color: AppColors.blueColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),)),
            ]
        ),
      );
    },
  );
}