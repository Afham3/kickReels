import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kick_reels/utils/AppColors/color.dart';
import 'package:kick_reels/utils/widgets/reuseable_button.dart';
import 'package:kick_reels/utils/widgets/stack_image.dart';
import '../../utils/widgets/PopupButton.dart';

class GameTutorialMain extends StatefulWidget {
  const GameTutorialMain({super.key});

  @override
  State<GameTutorialMain> createState() => _GameTutorialMainState();
}

class _GameTutorialMainState extends State<GameTutorialMain> {

  bool remaining = false;
  bool active = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: Padding(
          padding: EdgeInsets.only(left: width*0.03, top: height*0.006),
          child: CircleAvatar(
            radius: width*0.02,
            backgroundImage: AssetImage("assets/iamges/splashlogo.png"),
          ),
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("John Doe",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: AppColors.primaryTextTextColor
              ),
            ),
            PopUpMenuButton(),
          ],
        ),
      ),
      body: SafeArea(
        child:Column(
          children: [
            Container(
              height: height*0.075,
              margin: EdgeInsets.only(left: width*0.01,
              right: width*0.01),
              decoration: BoxDecoration(
                color: Colors.grey[50]
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                        onTap: (){
                          setState(() {
                            active = !active;
                          });
                        },
                        child: ReUseAbleButton(title: "All Clips", active: active,)),
                    InkWell(
                        onTap: (){
                          setState(() {
                            active = !active;
                          });
                        },
                        child: ReUseAbleButton(title: "My Clips", active: false,)),
                    InkWell(
                        onTap: (){
                          setState(() {
                            active = !active;
                          });
                        },
                        child: ReUseAbleButton(title: "By Players", active: false,)),
                    InkWell(
                        onTap: (){
                          setState(() {
                            active = !active;
                          });
                        },
                        child: ReUseAbleButton(title: "All Player Type", active: false,)),
                  ],
              ),
            ),
            SizedBox(height: height*0.03,),
            Container(
              height: height*0.075,
              decoration: BoxDecoration(
                  color: Colors.grey[100]
              ),
              child: Padding(
                padding: EdgeInsets.only(left: width*0.025, right: width*0.025),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Tutorial Game",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryTextTextColor,
                      fontSize: 16
                    ),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 20, color: AppColors.blackColor,)
                  ],
                ),
              ),
            ),
            SizedBox(height: height*0.025,),
            InkWell(
              onTap: (){
                showModalBottomSheet(
                    context: context,
                    builder: (context) => const GameActions());
              },
                child: ImageStack()),
          ],
        ),
      ),
    );
  }
}



class GameActions extends StatelessWidget {
  const GameActions({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return Container(
      height: height*0.80,
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
          children: [
            const Text(
              "Game actions",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: height*0.03),
            const ReUseAbleTextField(title: "Change Name",active: false,),
            SizedBox(height: height*0.02),
            const ReUseAbleTextField(title: "Download Full Game Video",active: false),
            SizedBox(height: height*0.02),
            const ReUseAbleTextField(title: "Share Video",active: false),
            SizedBox(height: height*0.02),
            const ReUseAbleTextField(title: "Delete Game",active: true),
            SizedBox(height: height*0.03),
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
          ],
        ),
      ),
    );
  }
}


class ReUseAbleTextField extends StatefulWidget {
  final String title ;
  final bool active;
  const ReUseAbleTextField({super.key, required this.title, required this.active});

  @override
  State<ReUseAbleTextField> createState() => _ReUseAbleTextFieldState();
}

class _ReUseAbleTextFieldState extends State<ReUseAbleTextField> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return Container(
      height: height*0.06,
      width: width*1,
      margin: EdgeInsets.only(left: width*0.01, right: width*.01),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width*0.015),
        color: Colors.grey[100],
      ),
      child: Padding(
        padding:  EdgeInsets.only(left: width*0.04, top: height*0.015),
        child: Text(widget.title,
        style:  TextStyle(
          fontSize: 13,
          color: widget.active? AppColors.redColor: AppColors.primaryTextTextColor,
          fontWeight: FontWeight.w400
        ),
        ),
      ),
    );
  }
}



