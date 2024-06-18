import 'package:flutter/material.dart';
import 'package:kick_reels/utils/AppColors/color.dart';
import 'package:kick_reels/utils/widgets/skip_button.dart';
import 'package:kick_reels/views/StartScreen/start_screen_three.dart';

class StartScreenTwo extends StatefulWidget {
  const StartScreenTwo({super.key});

  @override
  State<StartScreenTwo> createState() => _StartScreenTwoState();
}

class _StartScreenTwoState extends State<StartScreenTwo> {
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
                SkipButton(),
              ],
            ),
            SizedBox(height: height*0.2),
            Container(
              height: height*0.15,
              width: width*0.35,
              child: const Image(
                image: NetworkImage("data:image/png;base64,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"),
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
                  Text("Sports Spectacle Unfolded",
                    style: TextStyle(
                      color: AppColors.primaryTextTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Unleash the power of record and replay with our innovative app",
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const StartScreenThree()));
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
