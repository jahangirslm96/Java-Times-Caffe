import 'package:flutter/material.dart';
import 'package:fundraiser/screens/auth/phone_verification.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/custom_widgets/custom_button.dart';
import '../../../utils/custom_widgets/password_textfield.dart';



class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.white,
          leading:
          GestureDetector(
              onTap: (){
                Get.off(const PhoneVerificationScreen());
              },
              child: const Icon(Icons.arrow_back,color: Colors.black,)),
          title: const Center(
            child: Padding(
              padding: EdgeInsets.only(right: 50.0),
              child: Text(
                'New Password',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [

                  const SizedBox(height: 150,),
                  const Text(
                    'Add New Password',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 27,),
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
                  const SizedBox(height: 40,),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Confirm Password',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 3,),

                  const CustomTextFieldPassword(),

                  const SizedBox(height: 160,),
                  
                  const CustomButton(button_name: 'Submit'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
