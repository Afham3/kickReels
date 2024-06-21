import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kick_reels/utils/AppColors/color.dart';
import 'package:kick_reels/utils/widgets/TeamsPopUp_Button.dart';
import 'package:kick_reels/views/TrainingTeam/training_team.dart';

class TeamList extends StatefulWidget {
  const TeamList({super.key});

  @override
  State<TeamList> createState() => _TeamListState();
}

class _TeamListState extends State<TeamList> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // centerTitle: true,
        backgroundColor: Colors.white,
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
          const TeamTile(
            title: "Training Team",
            desc: "1 Team Member",
            status: true,
          ),SizedBox(height: height*0.003,),
          const TeamTile(
            title: "New Team",
            desc: "3 Team Member",
            status: false,
          ),
          SizedBox(height: height*0.003,),
          const TeamTile(
            title: "Training Team 2",
            desc: "4 Team Member",
            status: false,
          ),
          SizedBox(height: height*0.003,),
          const TeamTile(
            title: "Rejected Team",
            desc: "9 Team Member",
            status: true,
          ),
        ],
      ),
    );
  }
}


class TeamTile extends StatefulWidget {
  final String title;
  final String desc;
  final bool status;
  const TeamTile({super.key, required this.title, required this.desc, required this.status});

  @override
  State<TeamTile> createState() => _TeamTileState();
}

class _TeamTileState extends State<TeamTile> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return Container(
      height: height*0.12,
      decoration: BoxDecoration(
        color: Colors.grey[50],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: width*0.02, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xee324B4D),
            ),
          child: const Image(
            image: AssetImage('assets/images/splashlogo.png',),
            fit: BoxFit.cover,
            height: 30,
            width: 30,
          ),),
            SizedBox(width: width*0.035,),
            InkWell(
              onTap: (){
                Get.to(TrainingTeam());
              },
              child: Container(
                height: height*0.065,
                width: width*0.35,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5,),
                    Text(widget.title,
                    style:const  TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Text(widget.desc,
                      style:const  TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: width*0.25),
            InkWell(
              onTap: ()
              {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => const SubscriptionPlan(),
                );
              },
              child: Container(
                margin: EdgeInsets.only(right: 7),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: height*0.060,
                      width: width*0.25,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: widget.status? Colors.grey[100] : Colors.yellow[700],
                        borderRadius: BorderRadius.circular(width*0.035)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.status? "Subscribed" :" Subscribe"
                            ,
                            style: TextStyle(
                                fontWeight: widget.status? FontWeight.normal : FontWeight.normal,
                                fontSize: 14,
                                color: AppColors.blackColor
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class SubscriptionPlan extends StatelessWidget {
  const SubscriptionPlan({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return Container(
      height: height*0.9,
      decoration:  BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(width*0.05),
          topRight: Radius.circular(width*0.05),
        ),
      ),
      child: Padding(
        padding:  EdgeInsets.all(width*0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Choose Your Plan",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: height*0.02),
            const PlanTypeBox(
              status: true,
                title: "Family Plan - &9.99/Monthly",
                description:
                "Ideal for Parents and athletes, Free for \neveryone else on your Apple Family Plan",
              ),
            SizedBox(height: height*0.02),
            const PlanTypeBox(
              status: false,
              title: "Team Plan - &99.99/Monthly",
              description:
              "Great for parent, coaches, players and fans. \nFree for everyone who joins your team",
            ),
            SizedBox(height: height*0.02),
            InkWell(
              onTap: ()
              {
                Navigator.pop(context);
              },
              child: Container(
                height: height*0.07,
                width: width*1,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    borderRadius: BorderRadius.circular(width*0.03)
                ),
                child: const Text("Continue",
                  style: TextStyle(
                      color: AppColors.primaryTextTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w200
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            InkWell(
              onTap: ()
              {
                Navigator.pop(context);
              },
              child: Container(
                height: height*0.07,
                width: width*1,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(width*0.03)
                ),
                child: const Text("Cancel",
                  style: TextStyle(
                      color: AppColors.secondaryTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w200
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}

class PlanTypeBox extends StatelessWidget {
  final String title;
  final String description;
  final bool status;

  const PlanTypeBox({
    Key? key,
    required this.status,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return Container(
      //margin: EdgeInsets.only(left: width*0.05, right: width*0.05),
      height: height*0.15,
      width: width*1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width*0.04),
        color: status? Colors.orange[50] : Colors.grey[50],
      ),
      child: Padding(
        padding:  EdgeInsets.only(left: width*0.05, top: height*0.005),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.blackColor,
            ),
            ),
            SizedBox(height: height*0.015,),
            Text(description,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.normal,
                color: AppColors.secondaryTextColor,
              ),
            )
          ],
        ),
      ),
    );

  }
}