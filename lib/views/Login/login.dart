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
            SizedBox(height: height*0.07,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: height*0.07,
                  width: width*0.2,
                  child: const Image(
                    image: AssetImage("assets/images/splashlogo.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: height*0.055,),
            Container(
              margin: EdgeInsets.only(left: width*0.02, right: width*0.02),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Log in",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
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
                        hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),
                        fillColor: Colors.grey[200],
                        filled: true,
                        border:  const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.textFieldDefaultBorderColor),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        focusedBorder:  const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.greenColor),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        errorBorder:  const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.redColor),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        enabledBorder:  const OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.black12),
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
                      hintStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),
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
                          color: AppColors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.04,),
                  const Center(
                    child: Text("__________________or__________________",
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.05,),
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
                            radius: width*0.025,
                            backgroundImage: NetworkImage("data:image/png;base64,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"),
                          ),
                          SizedBox(width: width*0.007,),
                          const Text("Continue with Google",
                            style: TextStyle(
                              fontSize: 14,
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
                            backgroundImage: NetworkImage("data:image/png;base64,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"),
                          ),
                          SizedBox(width: width*0.007,),
                          const Text("Continue with Apple",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackColor,
                            ),
                          ),
                        ],
                      )
                  ),
                  SizedBox(height: height*0.09,),
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
