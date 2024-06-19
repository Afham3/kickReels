import 'package:flutter/material.dart';
import 'package:kick_reels/utils/AppColors/color.dart';
import 'package:get/get.dart';
import 'package:kick_reels/utils/widgets/PopupButton.dart';
import 'package:kick_reels/views/GameTutorial/game_tutorial_main.dart';
class StartRecording extends StatefulWidget {
  const StartRecording({super.key});

  @override
  State<StartRecording> createState() => _StartRecordingState();
}

class _StartRecordingState extends State<StartRecording> {
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
            radius: width*0.01,
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
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.only(left: width*0.02, right: width*0.02,top: height*0.05),
              elevation: 5,
              child: Container(
                height: height*0.3,
                width: width*1,
                // margin: EdgeInsets.only(left: width*0.02, right: width*0.02,top: height*0.05),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width*0.03),
                  color: Colors.yellow[50],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: width*0.05, right: width*0.05, top: height*0.02),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Welcome to Kick Reels",
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: height*0.01,),
                      const Text("Your team has not recorded any video yet. Tap the button below to create a new one!",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.grey,
                        ),
                      ),
                      SizedBox(height: height*0.025,),
                      InkWell(
                        onTap: ()
                        {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => const CameraRecordingModeBottomSheet(),
                          );
                        },
                        child: Container(
                          height: height*0.09,
                          width: width*0.33,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColors.yellowColor,
                              borderRadius: BorderRadius.circular(width*0.03)
                          ),
                          child: const Text("Start Recording",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: AppColors.whiteColor
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: height*0.01,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width*0.12,
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: height*0.015,
                        width: width*0.02,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width*0.01),
                          color: AppColors.grey,
                        ),
                      ),
                      Container(
                        height: height*0.015,
                        width: width*0.02,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width*0.01),
                          color: AppColors.grey,
                        ),
                      ),
                      Container(
                        height: height*0.015,
                        width: width*0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width*0.01),
                          color: AppColors.blackColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



class CameraRecordingModeBottomSheet extends StatelessWidget {
  const CameraRecordingModeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return Container(
      height: height*0.85,
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
              "Select Camera recording mode",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: height*0.03),
            InkWell(
              onTap: (){
                Get.to(const GameTutorialMain());
              },
              child: const _RecordingModeOption(
                icon: Icons.camera,
                title: "Single camera recording",
                description:
                "Standard recording where you operate the camera to track the action. Tap the highlight button to create highlights in real-time.",
              ),
            ),
            SizedBox(height: height*0.03),
            const _RecordingModeOption(
              icon: Icons.camera_alt,
              title: "Full court recording",
              description:
              "Record using two iPhones, our tripod mount and our AI technology to capture operator. Tap the highlights button to create highlights in real time.",
            ),
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

class _RecordingModeOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _RecordingModeOption({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 30,
          color: Colors.yellow,
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                description,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}