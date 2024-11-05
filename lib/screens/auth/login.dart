import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:fundraiser/screens/auth/forget_password/reset_password_with_options.dart';
import 'package:fundraiser/screens/auth/signUp.dart';
import 'package:fundraiser/screens/home/home.dart';
import 'package:fundraiser/screens/location_screen.dart';
import 'package:fundraiser/utils/app_colors.dart';
import 'package:fundraiser/utils/custom_widgets/password_textfield.dart';
import 'package:fundraiser/screens/auth/signUp.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../../utils/custom_widgets/custom_button.dart';
import '../../utils/custom_widgets/custom_textfield.dart';
import '../../utils/custom_widgets/textfield_for_phone.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  bool _isChecked = false;

  bool _isEmailSelected = true;


  @override
  Widget build(BuildContext context) {
   return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 8.h,),
                  ShowUpAnimation(
                      delayStart: const Duration(milliseconds: 1000),
                      animationDuration: const Duration(milliseconds: 1000),
                      curve: Curves.fastLinearToSlowEaseIn,
                      direction: Direction.horizontal,
                      offset: 0.5,
                      child: Image.asset('assets/images/logo.png')),
                  SizedBox(height: 5.5.h,),

                  ShowUpAnimation(
                    delayStart: const Duration(milliseconds: 1200),
                    animationDuration: const Duration(milliseconds: 1200),
                    curve: Curves.fastLinearToSlowEaseIn,
                    direction: Direction.vertical,
                    offset: 0.5,
                    child: const Text(
                      'Login to Our',
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
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.5.h,),
                  /// Email Phone Text Row
                  Padding(
                    padding: const EdgeInsets.only(left:0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              _isEmailSelected = true;

                            });
                          },
                          child: Text('Email',
                            style: TextStyle(
                              fontSize: 16,
                              color: _isEmailSelected ? AppColors.customRedColor : null,
                            ),
                          ),
                        ),
                        const SizedBox(width: 9,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              _isEmailSelected = false;

                            });
                          },
                          child: Text('Phone',
                            style: TextStyle(
                              fontSize: 16,
                              color: _isEmailSelected ? null : AppColors.customRedColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),



                  const SizedBox(height: 9,),

                  _isEmailSelected ? const CustomTextField(hint_text: 'Email',icon: Icons.mail_outline_sharp,) : const CustomTextFieldforPhone(),
                  /*CustomTextField(
                    hint_text: 'Email',
                  ),*/
                  const SizedBox(height: 18,),


                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                    'Password',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 3,),

                  const CustomTextFieldPassword(),

                  const SizedBox(height: 12,),

                  ///Radio Button Forget Password Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            activeColor: Colors.red,
                            checkColor: Colors.white,
                            value: _isChecked,
                            onChanged: (bool? newValue) {
                              setState(() {
                                _isChecked = newValue!;
                              });
                            },
                          ),
                          const Text(
                            'Remember me',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.to(const ResetPasswordOption());
                        },
                        child: const Text(
                          'Forget Password?',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 6.5.h,),
                  ShowUpAnimation(
                    delayStart: const Duration(milliseconds: 1200),
                    animationDuration: const Duration(milliseconds: 1200),
                    curve: Curves.fastLinearToSlowEaseIn,
                    direction: Direction.vertical,
                    offset: 0.5,
                    child: CustomButton(
                      button_name: 'Login',
                      ontap: (){
                        Get.to(const HomeScreen(),transition: Transition.fade,
                        duration: const Duration(seconds: 1));
                      },
                    ),
                  ),

                  SizedBox(height: 3.5.h,),

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
                          Colors.red,
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

                  SizedBox(height: 2.h,),

                  ShowUpAnimation(
                    delayStart: const Duration(milliseconds: 1200),
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
                        InkWell(
                          onTap: (){
                            Get.to(const SignUp(),transition: Transition.fadeIn,duration: const Duration(seconds: 1));
                          },
                          child: const Text(
                            'Sign up',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.red,
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
