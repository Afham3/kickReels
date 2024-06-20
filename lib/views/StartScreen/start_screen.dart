import 'package:flutter/material.dart';
import 'package:kick_reels/utils/AppColors/color.dart';
import 'package:kick_reels/views/StartScreen/start_screen_two.dart';

import '../../utils/widgets/skip_button.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height*1,
          width: width*1,
          decoration:  const BoxDecoration(
            gradient:  LinearGradient(
              colors: [
                Color(0xFFC8E6C9),
                Color(0xFFFFF9C4),
                AppColors.whiteColor,
                // Colors.yellow
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
            SizedBox(height: height*0.15),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50)
              ),
              child: const Image(
                image: AssetImage('assets/images/splashlogo.png'),
                  fit: BoxFit.contain
              ),
            ),
            SizedBox(height: height*0.18),
            Container(
              margin: EdgeInsets.only(left: width*0.1,right: width*0.1),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Sport Action Unleashed",
                    style: TextStyle(
                      color: AppColors.primaryTextTextColor,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Experience the Thrill, Record and Relieve Your Favourite Sports Moments",
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
                            color: AppColors.blackColor,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const StartScreenTwo()));
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
