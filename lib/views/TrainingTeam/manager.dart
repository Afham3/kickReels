import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/AppColors/color.dart';

class Manager extends StatefulWidget {
  const Manager({super.key});

  @override
  State<Manager> createState() => _ManagerState();
}

class _ManagerState extends State<Manager> {
  final playerName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("Manager",
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
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black54,
                  ),
                  child: const Text("J",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.yellowColor
                    ),
                  ),
                ),
              ],
            )),
          SizedBox(height: height*0.05,),
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
                hintText: "JohnDoe@gmail.com",
                hintStyle: const TextStyle(fontSize: 13,fontWeight: FontWeight.w300,color: AppColors.secondaryTextColor),
                fillColor: Colors.grey[200],
                filled: true,
                border:  const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textFieldDefaultBorderColor),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                focusedBorder: const  OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.greenColor),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                errorBorder: const  OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.redColor),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                enabledBorder: const  OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.black12),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),
          ),
          SizedBox(height: height*0.025,),
          InkWell(
            onTap: ()
            {

            },
            child: Container(
              height: height*0.07,
              margin: EdgeInsets.only(left: width*0.05, right: width*0.05),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(width*0.02),
              ),
              child: Padding(
                padding:  EdgeInsets.only(left: width*0.02, right: width*0.02),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Owner",
                    style: TextStyle(
                      color: AppColors.primaryTextTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios, color: AppColors.blackColor, size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: height*0.035,),
          InkWell(
            onTap: (){
              showModalBottomSheet(
                context: context,
                builder: (context) => const ChangeRoleSheet(),
              );
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
        ],
      ),
    );
  }
}


class ChangeRoleSheet extends StatelessWidget {
  const ChangeRoleSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return Container(
      height: height*0.9,
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Change Member Role",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Which Role would you like to have",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: height*0.02),
            const RoleBox(
              title: "Manager",
            ),
            SizedBox(height: height*0.02),
            const RoleBox(
              title: "Player Manager",
            ),SizedBox(height: height*0.02),
            const RoleBox(
              title: "Coach",
            ),SizedBox(height: height*0.02),
            const RoleBox(
              title: "Fan",
            ),SizedBox(height: height*0.02),
            const RoleBox(
              title: "Player",
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

class RoleBox extends StatelessWidget {
  final String title;

  const RoleBox({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return Container(
      margin: EdgeInsets.only(left: width*0.025, right: width*0.025),
      height: height*0.05,
      width: width*1,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width*0.02),
        color: Colors.grey[200]
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0),
        child: Text(title,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: AppColors.blackColor
        ),),
      ),
    );

  }
}