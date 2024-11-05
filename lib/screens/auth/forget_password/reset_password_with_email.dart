import 'package:flutter/material.dart';
import 'package:fundraiser/screens/auth/email_verification.dart';
import 'package:fundraiser/screens/auth/forget_password/forget_password_email_verification.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/custom_widgets/custom_button.dart';
import '../../../utils/custom_widgets/custom_textfield.dart';

class ResetPasswordWithEmail extends StatefulWidget {
  const ResetPasswordWithEmail({Key? key}) : super(key: key);

  @override
  State<ResetPasswordWithEmail> createState() => _ResetPasswordWithEmailState();
}

class _ResetPasswordWithEmailState extends State<ResetPasswordWithEmail> {
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
                    'Please enter your email address',
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
                      'Email Address',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 3,),
                  const CustomTextField(hint_text: 'Email Address', icon: Icons.mail_outline_sharp),

                  const SizedBox(height: 191,),
                  CustomButton(button_name: 'Send New Password',ontap: (){
                    Get.to(const ForgetPassEmailVerify());
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
