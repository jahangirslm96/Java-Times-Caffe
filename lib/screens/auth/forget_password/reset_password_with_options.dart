import 'package:flutter/material.dart';
import 'package:fundraiser/screens/auth/forget_password/reset_password_with_email.dart';
import 'package:fundraiser/screens/auth/forget_password/reset_password_with_number.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/custom_widgets/custom_button.dart';

class ResetPasswordOption extends StatefulWidget {
  const ResetPasswordOption({Key? key}) : super(key: key);

  @override
  State<ResetPasswordOption> createState() => _ResetPasswordOptionState();
}

class _ResetPasswordOptionState extends State<ResetPasswordOption> {
  bool _isChecked = false;
  bool _isChecked1 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(height: 115,),

                const Text(
                  'How would you like to',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),

                const SizedBox(height: 5,),
                const Text(
                  'reset your password?',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),

                const SizedBox(height: 63,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 44,),
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      activeColor: Colors.red,
                      checkColor: Colors.white,
                      value: _isChecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _isChecked = newValue!;
                        });
                      },
                    ),
                    const SizedBox(width: 5,),

                    const Text(
                      'Get a password reset via',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    const SizedBox(width: 98,),
                    const Text(
                      'f***d@jtc.com',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 31,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 44,),
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      activeColor: Colors.red,
                      checkColor: Colors.white,
                      value: _isChecked1,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _isChecked1 = newValue!;
                        });
                      },
                    ),
                    const SizedBox(width: 5,),

                    const Text(
                      'Get a password reset via',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    const SizedBox(width: 98,),
                    const Text(
                      '************00',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 225,),

                CustomButton(button_name: 'Continue',ontap: (){
                  if(_isChecked){
                    Get.to(const ResetPasswordWithEmail());
                  }
                  else{
                    Get.to(const ResetPasswordWithNumber());
                  }
                },),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

