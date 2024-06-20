import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kick_reels/utils/AppColors/color.dart';
import 'package:kick_reels/views/FAQ/contact.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({super.key});

  @override
  State<FaqPage> createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: const EdgeInsets.only(left: 130.0),
              child: const Text("FAQ",
              style: TextStyle(
                color: AppColors.blackColor,
                fontSize: 14,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            InkWell(
              onTap: (){
                Get.to(ContactPage());
              },
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(color: Colors.black, width: 1.5)
                ),
                child: Icon(Icons.question_mark, color: Colors.black, size: 20,),
              ),
            ),
          ],
        ),
        leading: BackButton(color: Colors.white,),
      ),
      body: Column(
        children: [
          Container(
            height: height*0.06,
            color: Colors.grey[200],
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text("Getting the Kick Reels",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16
                  ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            child: const Column(
              children: [
                TextWidget(),
                TextWidget(),
                TextWidget(),
                TextWidget(),
                TextWidget(),
                TextWidget(),
                TextWidget(),
              ],
            ),
          ),
          const SizedBox(height: 25,),
          Container(
            height: height*0.06,
            color: Colors.grey[200],
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text("Getting the Kick Reels",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            child: const Column(
              children: [
                TextWidget(),
                TextWidget(),
                TextWidget(),
                TextWidget(),
                TextWidget(),
                TextWidget(),
                TextWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class TextWidget extends StatefulWidget {
  const TextWidget({super.key});

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return Container(
      width: width*1,
      margin: EdgeInsets.only(left: width*0.06, right: width*0.06),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(width: 15,),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.5),
              color: Colors.grey
            ),
          ),
          const Text("Sed ut perspiciatis unde omnis iste natus?",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: AppColors.secondaryTextColor,
            decoration: TextDecoration.underline,
          ),
          ),
          SizedBox(width: 15,),
        ],
      ),
    );
  }
}
