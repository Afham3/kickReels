import 'package:flutter/material.dart';
import 'package:kick_reels/utils/AppColors/color.dart';
import 'package:get/get.dart';
import 'package:kick_reels/views/CreateAccount/create_account.dart';
import 'package:kick_reels/views/dashboard/dashboard.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    emailFocus.dispose();
    passwordFocus.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Column(

          children: [
            SizedBox(height: height*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: height*0.12,
                  width: width*0.25,
                  child: const Image(
                    image: AssetImage("assets/images/splashlogo.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            SizedBox(height: height*0.035,),
            Container(
              margin: EdgeInsets.only(left: width*0.02, right: width*0.02),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Log in",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: AppColors.blackColor
                    ),
                  ),
                  SizedBox(height: height*0.02,),
                  TextFormField(
                      style: const TextStyle(fontWeight: FontWeight.w400,color:Colors.black),
                      controller: emailController,
                      focusNode: emailFocus,
                      keyboardType: TextInputType.text,
                      decoration:  InputDecoration(
                        hintText: "Email Address",
                        hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color:AppColors.secondaryTextColor),
                        fillColor: Colors.grey[100],
                        filled: true,
                        border:  const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          // borderSide: BorderSide(color: AppColors.textFieldDefaultBorderColor),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        focusedBorder:  const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          // borderSide: BorderSide(color: AppColors.greenColor),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        errorBorder:  const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          // borderSide: BorderSide(color: AppColors.redColor),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        enabledBorder:  const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          // borderSide: BorderSide(color:Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        suffixIcon: Icon(
                          Icons.email_outlined, color: Colors.black,),
                      ),
                      onFieldSubmitted: (value){
                        emailFocus.unfocus();
                        FocusScope.of(context).requestFocus(passwordFocus);
                      }
                  ),
                  SizedBox(height: height*0.03,),
                  TextFormField(
                    style: const TextStyle(fontWeight: FontWeight.w400,color:Colors.black),
                    controller: passwordController,
                    focusNode: passwordFocus,
                    keyboardType: TextInputType.number,
                    decoration:  InputDecoration(
                      hintText: "Create Password",
                      hintStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color:AppColors.secondaryTextColor),
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
                      suffixIcon: Icon(
                        Icons.visibility_off, color: Colors.black,),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(width: width*0.007,),
                      const Text("Forgot Password?",
                        style: TextStyle(
                          fontSize: 13,
                          color: AppColors.primaryTextTextColor,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height*0.03,),
                  InkWell(
                    onTap: (){
                      Get.to(const dashboard());
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=> const CodeVerification()));
                    },
                    child: Container(
                      height: height*0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.02),
                        color: AppColors.yellowColor,
                      ),
                      child: const Text("Log In",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: AppColors.blackColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.035,),
                  const Center(
                    child: Text("_____________________or_____________________",
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.035,),
                  Container(
                      height: height*0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.02),
                        color: AppColors.whiteColor,
                        border: Border.all(color: AppColors.grey),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: width*0.030,
                            backgroundImage: const AssetImage('assets/images/google.png')
                          ),
                          SizedBox(width: width*0.007,),
                          const Text("Continue with Google",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackColor,
                            ),
                          ),
                        ],
                      )
                  ),
                  SizedBox(height: height*0.015,),
                  Container(
                      height: height*0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.02),
                        color: AppColors.whiteColor,
                        border: Border.all(color: AppColors.grey),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: width*0.030,
                            backgroundImage: const AssetImage('assets/images/apple.png')
                          ),
                          SizedBox(width: width*0.007,),
                          const Text("Continue with Apple",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackColor,
                            ),
                          ),
                        ],
                      )
                  ),
                  SizedBox(height: height*0.065,),
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an Account",style: TextStyle(
                          color:AppColors.grey,
                          fontSize: 13,
                        ),),
                        TextButton(onPressed: () {
                          Get.to(const CreateAccount());
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage(),));
                        }, child: const  Text("Sign Up",
                          style: TextStyle(
                            color:AppColors.yellowColor,
                            fontSize: 13,
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
