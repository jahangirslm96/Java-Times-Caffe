import 'package:flutter/material.dart';
import 'package:fundraiser/screens/verification_phone_number_v3/verification_phone_screen4.dart';
import 'package:fundraiser/utils/custom_widgets/custom_button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../../utils/app_colors.dart';
import '../../utils/custom_widgets/custom_textfield2.dart';

class VerificationPhoneScreen5 extends StatelessWidget {
  const VerificationPhoneScreen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(


        bottomSheet: Container(
          height: 22.h,//161
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [

              SizedBox(height: 14,),

              Image.asset('assets/images/avatar.png'),

              SizedBox(height: 8,),

              Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(height: 5,),
              Text(
                'View Profile',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.customRedColor
                ),
              ),

              SizedBox(height: 6,),

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
                      child: Icon(Icons.phone),
                    ),

                    SizedBox(width: 11,),
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
                        Get.off(VerificationPhoneScreen4());
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
                  child: const Text(
                    'Almost Here',
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
                    'Latest Arrival by 02:08 AM',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),

                  ),
                ),


          SizedBox(height: 30,),
          /// Show bottom sheet button
          GestureDetector(
            onTap: (){
              showModalBottomSheet(context: context,
                  builder: (BuildContext context){
                    return Container(
                      height:50.h,//161
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Image.asset('assets/images/avatar.png')),


                              SizedBox(height: 17,),

                              Text(
                                'How was John Doe’s Service?',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),

                              ),
                              SizedBox(height: 7,),

                              Text(
                                'Give the thumbs for good delivery',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.greyColorText,
                                ),

                              ),

                              SizedBox(height: 26,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(120),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Image.asset('assets/images/like.png'),
                              ),
                              SizedBox(width: 18,),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(120),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Image.asset('assets/images/dislike.png'),
                              ),
                            ],
                          ),

                              SizedBox(height: 50,),

                              Container(
                                height: 110,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: AppColors.verificationScreenContainerColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextFormField(
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  onChanged: (value) {
                                  },

                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,

                                  ),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: AppColors.verificationScreenContainerColor,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColors.verificationScreenContainerColor,
                                          width: 0),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:AppColors.verificationScreenContainerColor,
                                          width: 1.5),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    isDense: true,
                                    contentPadding: const EdgeInsets.all(5.0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    hintText: 'Feedback',
                                    hintStyle: TextStyle(color: Colors.grey[500]),
                                  ),
                                ),
                              ),


                              SizedBox(height: 50,),
                              CustomButton(button_name: 'SUBMIT',ontap: (){
                                return showDialog(context: context, builder: (BuildContext context){
                                  return Dialog(
                                    child:  Container(
                                      height: 220,
                                      width: 250,
                                      decoration: BoxDecoration(
                                          color: Colors.white
                                      ),
                                      child: Stack(
                                        children: [
                                          Image.asset('assets/images/thanks.png'),
                                          Positioned(
                                              left: 110,
                                              top: 30,
                                              child: Image.asset('assets/images/thanks1.png')),
                                        ],
                                      ),
                                    ),
                                  );

                                });
                              },),



                            ],
                          ),
                        ),
                      ),
                    );
                  });

            },
            child: Container(
              width: 80,
              height:30,
              decoration: BoxDecoration(
                color: AppColors.customRedColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Click here',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),


                /*CustomButton(button_name: 'Click here',ontap: (){

                },),*/



              ],
            ),
          ),
        ),
      ),
    );
  }
}
