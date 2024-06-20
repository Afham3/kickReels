import 'package:flutter/material.dart';
import 'package:kick_reels/utils/AppColors/color.dart';
import 'package:get/get.dart';
import 'package:kick_reels/utils/widgets/PopupButton.dart';

import 'start_recording.dart';
class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
          child:Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18)
            ),
            child: const Image(
              image: AssetImage("assets/images/splashlogo.png"),
              fit: BoxFit.contain,
            ),
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
            Container(
              height: height*0.3,
              width: width*1,
              margin: EdgeInsets.only(left: width*0.02, right: width*0.02,top: height*0.05),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.03),
                color: Colors.cyan[50]
              ),
              child: Padding(
                padding: EdgeInsets.only(left: width*0.05, right: width*0.05, top: height*0.02),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Allow Kick Reels to Send Notifications",
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.grey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: height*0.01,),
                    const Text("We would like to notify you when your videos are ready to view and edit, or when other team member have added new video or clips.",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.grey,
                      ),
                    ),
                    SizedBox(height: height*0.025,),
                    InkWell(
                      onTap: (){
                        Get.defaultDialog(
                          title: "“Kick Reels” Would Like to Send You Notifications",
                          titleStyle: const TextStyle(color: AppColors.whiteColor),
                          middleText: "Notifications may include alerts,sounds and icon badges. These can be configured in settings.",
                          middleTextStyle: const TextStyle(color: AppColors.whiteColor),
                          textConfirm: "Allow",
                          textCancel: "Don't Allow",
                          confirmTextColor: AppColors.blueColor,
                          cancelTextColor: AppColors.blueColor,
                          backgroundColor: Colors.black45,
                          onConfirm: (){
                            Navigator.pop(context);
                            Get.defaultDialog(
                              title: "“Kick Reels” Would Like to Use Bluetooth",
                              titleStyle: const TextStyle(color: AppColors.whiteColor),
                              middleText: "Bluetooth is used by the app to talk to other nearby devices and exchange video data between them",
                              middleTextStyle: const TextStyle(color: AppColors.whiteColor),
                              textConfirm: "Allow",
                              textCancel: "Don't Allow",
                              confirmTextColor: AppColors.blueColor,
                              cancelTextColor: AppColors.blueColor,
                              backgroundColor: Colors.black45,
                              onConfirm: (){
                                Navigator.pop(context);
                                Navigator.push(context, MaterialPageRoute(builder: (context) => StartRecording()));
                              }
                            );
                          }
                        );
                      },
                      child: Container(
                        height: height*0.065,
                        width: width*0.5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.circular(width*0.03)
                        ),
                        child: const Text("Allow Notifications",
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
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: AppColors.grey,
                        ),
                      ),
                      Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: AppColors.blackColor,
                        ),
                      ),
                      Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: AppColors.grey,
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
