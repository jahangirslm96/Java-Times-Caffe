import 'package:flutter/material.dart';
import 'package:fundraiser/screens/verification_phone_number_v3/verification_phone_screen1.dart';
import 'package:fundraiser/screens/verification_phone_number_v3/verification_phone_screen3.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../../utils/app_colors.dart';

class VerificationPhoneScreen2 extends StatelessWidget {
  const VerificationPhoneScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        bottomNavigationBar: GestureDetector(
          onTap: (){
            Get.to(const VerificationPhoneScreen3());
          },
          child: Container(
            height:115,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                const SizedBox(height: 6,),
                Container(
                  width: 60,
                  height: 6,
                  decoration: BoxDecoration(
                    color: AppColors.viewCartContainer,
                    borderRadius: BorderRadius.circular(52),
                  ),


                ),
                const SizedBox(height: 18,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/needHelpIcon.png'),

                    const SizedBox(width: 10,),
                    Text(
                      'Need help?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: AppColors.customRedColor,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8,),
                Text(
                  'Chat with JTC',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.customRedColor,
                  ),
                ),



              ],
            ),
          ),
        ),
        backgroundColor: AppColors.backgroundHome,
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [

                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.off(VerificationPhoneScreen1());
                      },
                        child: Image.asset('assets/images/backArrow.png')),

                    SizedBox(width: 4.w,),
                    const Text(
                      'Delivery Status',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),

                    ),
                  ],
                ),

                const SizedBox(height: 26,),

                ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 800),
                  animationDuration: const Duration(milliseconds: 800),
                  curve: Curves.fastLinearToSlowEaseIn,
                  direction: Direction.horizontal,
                  offset: 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 60,
                        height: 6,
                        decoration: BoxDecoration(
                          color: AppColors.customRedColor,
                          borderRadius: BorderRadius.circular(52),
                        ),


                      ),
                      Container(
                        width: 60,
                        height: 6,
                        decoration: BoxDecoration(
                          color: AppColors.customRedColor,
                          borderRadius: BorderRadius.circular(52),
                        ),


                      ),
                      Container(
                        width: 60,
                        height: 6,
                        decoration: BoxDecoration(
                          color: AppColors.viewCartContainer,
                          borderRadius: BorderRadius.circular(52),
                        ),


                      ),
                      Container(
                        width: 60,
                        height: 6,
                        decoration: BoxDecoration(
                          color: AppColors.viewCartContainer,
                          borderRadius: BorderRadius.circular(52),
                        ),


                      ),
                      Container(
                        width: 60,
                        height: 6,
                        decoration: BoxDecoration(
                          color: AppColors.viewCartContainer,
                          borderRadius: BorderRadius.circular(52),
                        ),


                      ),


                    ],
                  ),
                ),

                SizedBox(height: 15.h,),


                ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 1000),
                  animationDuration: const Duration(milliseconds: 1000),
                  curve: Curves.fastLinearToSlowEaseIn,
                  direction: Direction.horizontal,
                  offset: 0.5,
                  child: Container(
                    height: 236,
                    width: 236,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(120),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/coffeeMachine.png'),
                        const SizedBox(width: 5,),
                        Image.asset('assets/images/coffeCup.png'),
                      ],
                    )
                  ),
                ),

                SizedBox(height: 5.h,),

                ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 1200),
                  animationDuration: const Duration(milliseconds: 1200),
                  curve: Curves.fastLinearToSlowEaseIn,
                  direction: Direction.horizontal,
                  offset: 0.5,
                  child: const Text(
                    'Prepare Your Order',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),

                  ),
                ),

                const SizedBox(height: 5,),

                ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 1200),
                  animationDuration: const Duration(milliseconds: 1200),
                  curve: Curves.fastLinearToSlowEaseIn,
                  direction: Direction.horizontal,
                  offset: 0.5,
                  child: const Text(
                    'Latest Arrival by 01:58 AM',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),

                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
