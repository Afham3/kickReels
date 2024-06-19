import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kick_reels/utils/AppColors/color.dart';
import 'package:kick_reels/utils/widgets/TeamsPopUp_Button.dart';

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
        padding: EdgeInsets.only(left: width*0.02),
        child: Row(
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
            Container(
              height: height*0.065,
              width: width*0.35,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
            SizedBox(width: width*0.25),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: height*0.060,
                    width: width*0.25,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: widget.status? Colors.grey[100] : AppColors.yellowColor,
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
          ],
        ),
      ),
    );
  }
}
