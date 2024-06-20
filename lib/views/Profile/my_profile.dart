import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kick_reels/utils/AppColors/color.dart';
import 'package:kick_reels/utils/widgets/profile_menu.dart';
import 'package:kick_reels/views/FAQ/contact.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: const EdgeInsets.only(left: 100.0),
              child: const Text("Training Team",
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: ProfileMenuButton(),
            ),
          ],
        ),
        leading: const BackButton(color: Colors.white,),
      ),
      body: Column(
        children: [
          SizedBox(height: height*0.025,),
          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.black54,
                    ),
                    child: const Text("J",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.yellowColor
                      ),
                    ),
                  ),
                ],
              ),
          ),
          SizedBox(height: height*0.04,),
          Container(
            color: Colors.grey[50],
            child: const ListTile(
              title: const Text("JohnDoe@gmail.com",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryTextTextColor
                ),
              ),
              subtitle: const Text("Owner",
                style: TextStyle(
                  fontSize: 13.5,
                  fontWeight: FontWeight.normal,
                  color: AppColors.secondaryTextColor,
                ),
              ),
            ),
          ),
          SizedBox(height: height*0.07,),
          Container(
            color: Colors.grey[50],
            child: const ListTile(
              title: const Text("Latest Messages",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryTextTextColor
                ),
              ),
              subtitle: const Text("None",
                style: TextStyle(
                  fontSize: 13.5,
                  fontWeight: FontWeight.normal,
                  color: AppColors.secondaryTextColor,
                ),
              ),
            ),
          ),
          SizedBox(height: height*0.33,),
          InkWell(
            onTap: (){

            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.03, right: width*0.03),
              height: height*0.07,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.02),
                color: Colors.grey[100],
              ),
              child: const Text("Log Out",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: AppColors.redColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


