import 'package:flutter/material.dart';
import 'package:kick_reels/utils/AppColors/color.dart';
import 'package:kick_reels/views/CodeVerification/code_verification.dart';
import 'package:get/get.dart';
import 'package:kick_reels/views/Login/login.dart';
class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
      backgroundColor: Colors.white,
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
            SizedBox(height: height*0.03,),
            Container(
              margin: EdgeInsets.only(left: width*0.02, right: width*0.02),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Create account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
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
                        hintText: "Email address",
                        hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color:AppColors.secondaryTextColor),
                        fillColor: Colors.grey[100],
                        filled: true,
                        border:  const OutlineInputBorder(
                           borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        focusedBorder:  const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        errorBorder:  const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        enabledBorder:  const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        suffixIcon: Icon(
                          Icons.email_outlined, color: Colors.grey[800],),
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
                        hintText: "Create password",
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
                          Icons.visibility_off, color: Colors.grey[800],),
                      ),
                  ),
                  SizedBox(height: height*0.04,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const CodeVerification()));
                    },
                    child: Container(
                      height: height*0.07,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.02),
                        color: Colors.yellow[700]
                      ),
                      child: const Text("Create account",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                      ),
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.05,),
                  const Center(
                    child: Text("_________________________or_________________________",
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
                          radius: width*0.030,
                          backgroundImage: AssetImage("assets/images/google.png"),
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
                  SizedBox(height: height*0.025,),
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
                            backgroundImage: const AssetImage("assets/images/apple.png"),
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
                  SizedBox(height: height*0.06,),
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
                         Get.to(const LoginPage());
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage(),));
                        }, child: const  Text("Sign In",
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
