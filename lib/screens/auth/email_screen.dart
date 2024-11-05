import 'package:flutter/material.dart';
import 'package:fundraiser/screens/auth/login.dart';
import 'package:fundraiser/screens/auth/signUp.dart';
import 'package:fundraiser/utils/app_colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:show_up_animation/show_up_animation.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({Key? key}) : super(key: key);

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 18.h,),
                ShowUpAnimation(
                    delayStart: const Duration(milliseconds: 1000),
                    animationDuration: const Duration(milliseconds: 1000),
                    curve: Curves.fastLinearToSlowEaseIn,
                    direction: Direction.horizontal,
                    offset: 0.5,
                    child: Image.asset('assets/images/logo.png')),
                SizedBox(height: 7.h,),

                ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 1200),
                  animationDuration: const Duration(milliseconds: 1200),
                  curve: Curves.fastLinearToSlowEaseIn,
                  direction: Direction.vertical,
                  offset: 0.5,
                  child: const Text(
                    'Welcome to our',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 1200),
                  animationDuration: const Duration(milliseconds: 1200),
                  curve: Curves.fastLinearToSlowEaseIn,
                  direction: Direction.vertical,
                  offset: 0.5,
                  child: const Text(
                    'Java Times Caffe',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 160,),
                ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 1200),
                  animationDuration: const Duration(milliseconds: 1200),
                  curve: Curves.fastLinearToSlowEaseIn,
                  direction: Direction.vertical,
                  offset: 0.5,
                  child: GestureDetector(
                    onTap: (){
                      Get.to(const LoginScreen(),transition: Transition.fadeIn,duration: const Duration(seconds: 1));
                    },
                    child: Container(
                      width: 70.w,
                      height:42,
                      decoration: BoxDecoration(
                        color: AppColors.customRedColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'Sign in with Phone/Email',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 38,),

                ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 1200),
                  animationDuration: const Duration(milliseconds: 1200),
                  curve: Curves.fastLinearToSlowEaseIn,
                  direction: Direction.vertical,
                  offset: 0.5,
                  child: const Text(
                    'OR',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),


                const SizedBox(height: 30,),

                ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 1200),
                  animationDuration: const Duration(milliseconds: 1200),
                  curve: Curves.fastLinearToSlowEaseIn,
                  direction: Direction.vertical,
                  offset: 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      socialMediaContain(
                        Colors.grey,
                          'assets/images/apple.png',
                      ),
                      SizedBox(width: 5.w,),
                      socialMediaContain(
                        AppColors.customRedColor,
                        'assets/images/google.png',
                      ),

                      SizedBox(width: 5.w,),
                      socialMediaContain(
                        Colors.blue,
                        'assets/images/fb.png',
                      ),

                    ],
                  ),
                ),

                const SizedBox(height: 40,),

                ShowUpAnimation(delayStart: const Duration(milliseconds: 1200),
                  animationDuration: const Duration(milliseconds: 1200),
                  curve: Curves.fastLinearToSlowEaseIn,
                  direction: Direction.vertical,
                  offset: 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have account?",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 4,),
                      GestureDetector(
                        onTap: (){
                          Get.to(const SignUp());
                        },
                        child: Text(
                            'Sign up',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.customRedColor,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );

  }
  Widget socialMediaContain(
      Color borderColor,
      String image,
      ) =>
      Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(120),
          border: Border.all(color: borderColor),
        ),
        child: Image.asset(image),
      );

}
