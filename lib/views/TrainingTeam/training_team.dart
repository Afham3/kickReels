import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kick_reels/utils/AppColors/color.dart';
import 'package:kick_reels/utils/widgets/training_team_menuButton.dart';

class TrainingTeam extends StatefulWidget {
  const TrainingTeam({super.key});

  @override
  State<TrainingTeam> createState() => _TrainingTeamState();
}

class _TrainingTeamState extends State<TrainingTeam> {
  bool player = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        backgroundColor: AppColors.whiteColor,
        title:  Padding(
          padding:  EdgeInsets.only(left: width*0.22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               const Text("Training Teams",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor
                ),
              ),
               Padding(
                 padding: EdgeInsets.only(left: width*0.1),
                 child: const TrainingTeamPopUpMenuButton(),
               ),
            ],
          ),
        ),
        leading: const BackButton(color: AppColors.blackColor,),
      ),

      body: Column(
        children: [
          Container(
            height: height*0.065,
            decoration: BoxDecoration(
              color: Colors.grey[100],
            ),
            child: Padding(
                padding:  EdgeInsets.only(left:width*0.075 , right: width*0.075,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                     const Text(
                      'Players Only',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.5,
                          color: AppColors.blackColor
                      ),
                    ),
                  Switch(
                    activeColor: AppColors.blueColor,
                      value: player,
                      onChanged: (value){
                        setState(() {
                          player=value;
                        });
                      })
                ],
              ),
            ),
          ),
          SizedBox(height: height*0.025,),
          Container(
            color: Colors.grey[100],
            child: ListTile(
              leading: Container(
                height: 32,
                width: 32,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.black54,
                ),
                child: const Text("J",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.yellowColor
                ),
                ),
              ),
              title: const Text("JohnDoe@gmail.com",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryTextTextColor
              ),
              ),
              subtitle: const Text("Manager",
                style: TextStyle(
                    fontSize: 13.5,
                    fontWeight: FontWeight.normal,
                    color: AppColors.secondaryTextColor,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios, color: AppColors.blackColor, size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
