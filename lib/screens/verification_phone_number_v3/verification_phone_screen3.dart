import 'package:flutter/material.dart';
import 'package:fundraiser/screens/verification_phone_number_v3/verification_phone_screen2.dart';
import 'package:fundraiser/screens/verification_phone_number_v3/verification_phone_screen4.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../../utils/app_colors.dart';
import '../../utils/custom_widgets/custom_textfield2.dart';

class VerificationPhoneScreen3 extends StatelessWidget {
  const VerificationPhoneScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomSheet: Container(
          height:22.h,//161
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [

              const SizedBox(height: 14,),

              Image.asset('assets/images/avatar.png'),

              const SizedBox(height: 8,),

              const Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 5,),
              Text(
                'View Profile',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.customRedColor
                ),
              ),

              const SizedBox(height: 6,),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [

                    Container(
                      height: 37,
                      width: 37,
                      decoration: BoxDecoration(
                        color: AppColors.verificationScreenContainerColor,
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: const Icon(Icons.phone),
                    ),

                    const SizedBox(width: 11,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.verificationScreenContainerColor,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.verificationScreenContainerColor,
                                width: 0),
                            borderRadius: BorderRadius.circular(56.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.verificationScreenContainerColor,
                                width: 1.5),
                            borderRadius: BorderRadius.circular(56.0),
                          ),
                          isDense: true,
                          contentPadding: const EdgeInsets.all(10.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          hintText: 'Send Message',
                          hintStyle: TextStyle(color: Colors.grey[500],fontSize: 16),

                        ),
                      ),
                    ),




                  ],
                ),
              )



            ],
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
                          Get.off(VerificationPhoneScreen2());
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

                /// Containers Row
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


                    ],
                  ),
                ),

                SizedBox(height: 9.h,),


                /// Map Container
                ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 1000),
                  animationDuration: const Duration(milliseconds: 1000),
                  curve: Curves.fastLinearToSlowEaseIn,
                  direction: Direction.horizontal,
                  offset: 0.5,
                  child: Container(
                      height: 42.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.mapContainerColor,
                        borderRadius: BorderRadius.circular(20),
                      ),

                  ),
                ),


                SizedBox(height: 3.h,),

                ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 1200),
                  animationDuration: const Duration(milliseconds: 1200),
                  curve: Curves.fastLinearToSlowEaseIn,
                  direction: Direction.horizontal,
                  offset: 0.5,
                  child: GestureDetector(
                    onTap: (){
                      Get.to(const VerificationPhoneScreen4());
                    },
                    child: const Text(
                      'Picking Up Your',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),

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
                    'Order',
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
                    'Latest Arrival by 02:00 AM',
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
