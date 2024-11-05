import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fundraiser/screens/auth/email_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:show_up_animation/show_up_animation.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /*Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => EmailScreen()
            )
        )
    );*/
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/splashBackground.png"),
                  fit: BoxFit.fill
              ),

          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20.h,),
              ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 1000),
                  animationDuration: const Duration(milliseconds: 1000),
                  curve: Curves.fastLinearToSlowEaseIn,
                  direction: Direction.horizontal,
                  offset: 0.5,
                  child: Image.asset('assets/images/logo.png')),

              const SizedBox(height: 70,),
              ShowUpAnimation(
                delayStart: const Duration(milliseconds: 1200),
                animationDuration: const Duration(milliseconds: 1200),
                curve: Curves.fastLinearToSlowEaseIn,
                direction: Direction.vertical,
                offset: 0.5,
                child: const Text(
                  'coffee so good,',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
              ),
              ShowUpAnimation(
                delayStart: const Duration(milliseconds: 1200),
                animationDuration: const Duration(milliseconds: 1200),
                curve: Curves.fastLinearToSlowEaseIn,
                direction: Direction.vertical,
                offset: 0.5,
                child: const Text(
                  'your taste buds',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
              ),
              ShowUpAnimation(
                delayStart: const Duration(milliseconds: 1200),
                animationDuration: const Duration(milliseconds: 1200),
                curve: Curves.fastLinearToSlowEaseIn,
                direction: Direction.vertical,
                offset: 0.5,
                child: const Text(
                  'will love it',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 10,),
              ShowUpAnimation(
                delayStart: const Duration(milliseconds: 1400),
                animationDuration: const Duration(milliseconds: 1400),
                curve: Curves.fastLinearToSlowEaseIn,
                direction: Direction.vertical,
                offset: 0.5,
                child: const Text(
                  'The best grain, the finest roast,',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              ShowUpAnimation(
                delayStart: const Duration(milliseconds: 1400),
                animationDuration: const Duration(milliseconds: 1400),
                curve: Curves.fastLinearToSlowEaseIn,
                direction: Direction.vertical,
                offset: 0.5,
                child: const Text(
                  'the most powerful flavor',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20.h,),

              ShowUpAnimation(
                delayStart: const Duration(milliseconds: 1600),
                animationDuration: const Duration(milliseconds: 1600),
                curve: Curves.fastLinearToSlowEaseIn,
                direction: Direction.vertical,
                offset: 0.5,
                child: GestureDetector(
                  onTap: (){
                    Get.to(const EmailScreen(),transition: Transition.fadeIn,
                    duration: const Duration(seconds: 1));
                  },
                  child: Container(
                    width: 40.w,
                    height:42,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

}
