import 'package:flutter/material.dart';
import 'package:fundraiser/screens/auth/forget_password/forget_pass_phone_verification.dart';
import 'package:fundraiser/utils/custom_widgets/textfield_for_phone.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/custom_widgets/custom_button.dart';

class ResetPasswordWithNumber extends StatefulWidget {
  const ResetPasswordWithNumber({Key? key}) : super(key: key);

  @override
  State<ResetPasswordWithNumber> createState() => _ResetPasswordWithNumberState();
}

class _ResetPasswordWithNumberState extends State<ResetPasswordWithNumber> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height:8.h),
                  Image.asset('assets/images/logo.png'),

                  const SizedBox(height: 75,),

                  const Text(
                    'Reset Password',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  const SizedBox(height: 5,),
                  const Text(
                    'Please enter your phone number',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const Text(
                    'to request a new password',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 32,),

                  const SizedBox(height: 15,),

                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Phone Number',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 3,),
                  const CustomTextFieldforPhone(),

                  const SizedBox(height: 191,),
                  CustomButton(button_name: 'Send New Password',ontap: (){
                    Get.to(const ForgetPassPhoneVerification());
                  },),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
