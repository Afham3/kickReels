import 'package:flutter/material.dart';
import 'package:kick_reels/utils/AppColors/color.dart';
import 'package:kick_reels/utils/widgets/skip_button.dart';
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
                Color(0xFFC8E6C9),
                Color(0xFFFFF9C4),
                AppColors.whiteColor,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // SkipButton(),
              ],
            ),
            SizedBox(height: height*0.15),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50)
              ),
              child: const Image(
                image: AssetImage('assets/images/splashlogo.png'),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: height*0.18),
            Container(
              margin: EdgeInsets.only(left: width*0.1,right: width*0.1),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Capture The Moment",
                    style: TextStyle(
                      color: AppColors.primaryTextTextColor,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Experience seamless recording and editing features that let you relive your best moments",
                    style: TextStyle(
                      color: AppColors.secondaryTextColor,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: height*0.3),
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
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.grey,
                          ),
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.grey,
                          ),
                        ),
                        // Container(
                        //   height: height*0.015,
                        //   width: width*0.02,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(width*0.01),
                        //     color: AppColors.grey,
                        //   ),
                        // ),
                        Container(
                          height: 10,
                          width: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.blackColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
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
