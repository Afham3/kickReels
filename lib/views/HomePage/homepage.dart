import 'package:flutter/material.dart';
import 'package:kick_reels/utils/AppColors/color.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: CircleAvatar(
          radius: width*0.02,
          backgroundImage: AssetImage("assets/iamges/splash_logo.png"),
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
            Icon(Icons.more_vert_rounded, color: AppColors.blackColor, size: 25,)
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
                color: Colors.grey[100],
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
                    const Text("We’ve created a sample team (“Training Team”) with video for you to experiment with. Feel free to delete this team or create your own on the My Team page.",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.grey,
                      ),
                    ),
                    SizedBox(height: height*0.025,),
                    Container(
                      height: height*0.09,
                      width: width*0.33,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                        borderRadius: BorderRadius.circular(width*0.03)
                      ),
                      child: const Text("Continue",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: AppColors.whiteColor
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
                        height: height*0.015,
                        width: width*0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width*0.01),
                          color: AppColors.blackColor,
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
                        width: width*0.02,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width*0.01),
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
