import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:fundraiser/screens/auth/email_verification.dart';
import 'package:fundraiser/screens/auth/login.dart';
import 'package:fundraiser/screens/auth/phone_verification.dart';
import 'package:fundraiser/utils/anim/show_up_anim.dart';
import 'package:fundraiser/utils/custom_widgets/password_textfield.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../../utils/custom_widgets/custom_button.dart';
import '../../utils/custom_widgets/custom_textfield.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {


  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25,),
                ShowUpAni(

                    child_widget: Image.asset('assets/images/logo.png',height: 35,width: 100,),
                    duration: const Duration(milliseconds: 1000),
                    direction: Direction.horizontal,
                   ),
                const SizedBox(height: 17,),

                const ShowUpAni(
                  duration: Duration(milliseconds: 1000),
                  direction: Direction.horizontal,
                  child_widget: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Sign Up to Our',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                const ShowUpAni(
                  duration: Duration(milliseconds: 1000),
                  direction: Direction.horizontal,
                  child_widget: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Java Times Caffe',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 24,),

                const Text(
                  'Name',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 3,),
              ///Name Textfield
              TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onChanged: (value) {
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter email';
                }
                if (value.length>200){
                  return 'Cannot exceed 200 characters';
                }
                return null;

              },

              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,

              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color(0xF3F3F3),
                      width: 0),
                  borderRadius: BorderRadius.circular(6.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color(0xF3F3F3),
                      width: 1.5),
                  borderRadius: BorderRadius.circular(6.0),
                ),
                isDense: true,
                contentPadding: const EdgeInsets.all(18.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
                hintText: 'Enter your name',
                hintStyle: TextStyle(color: Colors.grey[500]),
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.account_circle_rounded,size: 20,color: Colors.black,),
                ),
              ),
            ),
                const SizedBox(height: 15,),

                /// Last Name
                const Text(
                  'Last Name',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 3,),

                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: (value) {
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter email';
                    }
                    if (value.length>200){
                      return 'Cannot exceed 200 characters';
                    }
                    return null;

                  },

                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,

                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xF3F3F3),
                          width: 0),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xF3F3F3),
                          width: 1.5),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    isDense: true,
                    contentPadding: const EdgeInsets.all(18.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    hintText: 'Enter your last name',
                    hintStyle: TextStyle(color: Colors.grey[500]),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.account_circle_rounded,size: 20,color: Colors.black,),
                    ),
                  ),
                ),

                const SizedBox(height: 15,),

                /// Email
                const Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 3,),

                const CustomTextField(hint_text: 'Enter your email',icon: Icons.mail_outline_sharp,),

                /// Phone Number textfield
                const SizedBox(height: 15,),

                const Text(
                  'Phone Number',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 3,),

                /*CustomTextField(hint_text: 'Enter your email'),*/

                ///Country COde Picker
                IntlPhoneField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xF3F3F3),
                          width: 0),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xF3F3F3),
                          width: 1.5),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    isDense: true,
                    contentPadding: const EdgeInsets.all(18.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(color: Colors.grey[500]),
                  ),
                  initialCountryCode: 'PK',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),

                /// Password textfield

                const Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 3,),
                const CustomTextFieldPassword(),

                ///Confirm Password textfield
                const SizedBox(height: 15,),

                const Text(
                  'Confirm Password',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 3,),
                const CustomTextFieldPassword(),

                SizedBox(height: 2.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have account?",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 4,),
                    InkWell(
                      onTap: (){
                        Get.to(const LoginScreen());
                      },
                      child: InkWell(
                        onTap: (){
                          Get.to(const LoginScreen());
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 2.5.h,),

                CustomButton(
                  button_name: 'Sign Up',
                  ontap: (){
                    Get.to(const EmailVerificationScreen());
                  },
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
