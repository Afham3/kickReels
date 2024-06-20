import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kick_reels/utils/AppColors/color.dart';
import 'package:kick_reels/views/MyTeams/create_team.dart';

import '../../utils/widgets/TeamsPopUp_Button.dart';

class MainTeamPage extends StatefulWidget {
  const MainTeamPage({super.key});

  @override
  State<MainTeamPage> createState() => _MainTeamPageState();
}

class _MainTeamPageState extends State<MainTeamPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        backgroundColor: AppColors.whiteColor,
        title:  Padding(
          padding:  EdgeInsets.only(left: width*0.25),
          child: Row(
            children: [
              const Text("My Teams",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor
                ),
              ),
              SizedBox(width: width*0.28,),
              const PopUpTeamsButton(),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left:width*0.075 ),
                  child: const Text(
                    'Active Teams',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.5,
                        color: AppColors.blackColor
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height*0.025,),
          Container(
            height: height*0.065,
            decoration: BoxDecoration(
              color: Colors.grey[50],
            ),
            child: Padding(
              padding:  EdgeInsets.only(left: width*0.03,right: width*0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: width*0.05),
                    child: const Text("No team Available",
                      style: TextStyle(
                        color: AppColors.secondaryTextColor,
                        fontSize: 14.5,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: ()
                    {
                      Get.to(CreateTeam());
                    },
                    child: Container(
                      height: height*0.045,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.yellowColor,
                        borderRadius: BorderRadius.circular(width*0.05),
                      ),
                      child: const Padding(
                        padding:  EdgeInsets.only(left: 8, right: 8),
                        child:  Text("Create Team",
                          style: TextStyle(
                              color: AppColors.primaryTextTextColor,
                              fontSize: 14.5,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
