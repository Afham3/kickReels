import 'package:flutter/material.dart';
import 'package:kick_reels/utils/AppColors/color.dart';
import 'package:kick_reels/views/CreateAccount/create_account.dart';

class StartScreenThree extends StatefulWidget {
  const StartScreenThree({super.key});

  @override
  State<StartScreenThree> createState() => _StartScreenThreeState();
}

class _StartScreenThreeState extends State<StartScreenThree> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height*1,
          width: width*1,
          decoration: const BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                AppColors.greenColor,
                AppColors.yellowColor,
                AppColors.whiteColor,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: height*0.05,
                  width: width*0.1,
                  margin: EdgeInsets.all(width*0.015),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    color: Color(0xE0DDDDFF),
                  ),
                  child: const Text("Skip",
                    style: TextStyle(
                      color: AppColors.primaryTextTextColor,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height*0.2),
            Container(
              height: height*0.15,
              width: width*0.35,
              child: const Image(
                image: AssetImage("assets/images/splash_logo.png"),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: height*0.2),
            Container(
              margin: EdgeInsets.only(left: width*0.1,right: width*0.1),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Capture The Moment",
                    style: TextStyle(
                      color: AppColors.primaryTextTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Experience seamless recording and editing features that let you relive your best moments",
                    style: TextStyle(
                      color: AppColors.secondaryTextColor,
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: height*0.20),
            Container(
              margin: EdgeInsets.only(left: width*0.05,right: width*0.05,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width*0.15,
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
                  Container(
                    height: height*0.07,
                    width: width*0.10,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.05),
                        color: AppColors.whiteColor,
                        border: Border.all(color: AppColors.blackColor, width: 3)
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateAccount()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        padding: const EdgeInsets.all(0),
                        shape: const CircleBorder(),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.blackColor,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],),
        ),
      ),
    );
  }
}
