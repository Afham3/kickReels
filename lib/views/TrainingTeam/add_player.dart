import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kick_reels/views/TrainingTeam/manager.dart';

import '../../utils/AppColors/color.dart';

class AddPlayer extends StatefulWidget {
  const AddPlayer({super.key});

  @override
  State<AddPlayer> createState() => _AddPlayerState();
}

class _AddPlayerState extends State<AddPlayer> {
  final playerName = TextEditingController();
  final playerCode= TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("Add Player",
        style: TextStyle(
          fontSize: 16,
          color: AppColors.blackColor,
          fontWeight: FontWeight.bold
        ),
        ),
        leading: const BackButton(color: AppColors.blackColor,),
      ),

      body:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height*0.025,),
          Padding(
            padding:  EdgeInsets.only(left: width*0.05),
            child: const Text("Name",
            style: TextStyle(
              fontSize: 13.5,
              fontWeight: FontWeight.normal,
              color: AppColors.primaryTextTextColor,
            ),),
          ),
          Container(
            margin: EdgeInsets.only(left: width*0.05, right: width*0.05),
            child: TextFormField(
              style: const TextStyle(fontWeight: FontWeight.w300,color: AppColors.secondaryTextColor),
              controller: playerName,
              keyboardType: TextInputType.text,
              decoration:  InputDecoration(
                hintText: "Enter Full Name",
                hintStyle: const TextStyle(fontSize: 13,fontWeight: FontWeight.w300,color: AppColors.secondaryTextColor),
                fillColor: Colors.grey[100],
                filled: true,
                border:  const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  // borderSide: BorderSide(color: AppColors.textFieldDefaultBorderColor),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                focusedBorder: const  OutlineInputBorder(
                  borderSide: BorderSide.none,
                  // borderSide: BorderSide(color: AppColors.greenColor),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                errorBorder: const  OutlineInputBorder(
                  borderSide: BorderSide.none,
                  // borderSide: BorderSide(color: AppColors.redColor),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                enabledBorder: const  OutlineInputBorder(
                  borderSide: BorderSide.none,
                  // borderSide: BorderSide(color:Colors.black12),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),
          ),
          SizedBox(height: height*0.015,),
          Padding(
            padding:  EdgeInsets.only(left: width*0.05),
            child: const Text("Number",
              style: TextStyle(
                fontSize: 13.5,
                fontWeight: FontWeight.normal,
                color: AppColors.primaryTextTextColor,
              ),),
          ),
          Container(
            margin: EdgeInsets.only(left: width*0.05, right: width*0.05),
            child: TextFormField(
              style: const TextStyle(fontWeight: FontWeight.w300,color: AppColors.secondaryTextColor),
              controller: playerCode,
              keyboardType: TextInputType.text,
              decoration:  InputDecoration(
                hintText: "#",
                hintStyle: const TextStyle(fontSize: 13,fontWeight: FontWeight.w300,color: AppColors.secondaryTextColor),
                fillColor: Colors.grey[100],
                filled: true,
                border:  const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  // borderSide: BorderSide(color: AppColors.textFieldDefaultBorderColor),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                focusedBorder: const  OutlineInputBorder(
                  borderSide: BorderSide.none,
                  // borderSide: BorderSide(color: AppColors.greenColor),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                errorBorder: const  OutlineInputBorder(
                  borderSide: BorderSide.none,
                  // borderSide: BorderSide(color: AppColors.redColor),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                enabledBorder: const  OutlineInputBorder(
                  borderSide: BorderSide.none,
                  // borderSide: BorderSide(color:Colors.black12),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),
          ),
          SizedBox(height: height*0.065,),
          InkWell(
            onTap: (){
            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.05, right: width*0.05),
              height: height*0.07,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.02),
                color: AppColors.yellowColor,
              ),
              child: const Text("Save",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: AppColors.secondaryTextColor,
                ),
              ),
            ),
          ),
          SizedBox(height: height*0.025,),
          InkWell(
            onTap: (){
              Get.to(Manager());
            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.05, right: width*0.05),
              height: height*0.07,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.02),
                color: Colors.grey[200],
              ),
              child: const Text("Save & Invite",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: AppColors.secondaryTextColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
