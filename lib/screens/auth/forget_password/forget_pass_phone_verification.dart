import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fundraiser/screens/auth/forget_password/resend_code_screen.dart';
import 'package:fundraiser/screens/auth/forget_password/reset_password.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../../../utils/anim/show_up_anim.dart';
import '../../../utils/app_colors.dart';

import '../../../utils/custom_widgets/custom_button.dart';
import '../../../utils/custom_widgets/custom_verification_textfield.dart';

class ForgetPassPhoneVerification extends StatefulWidget {
  const ForgetPassPhoneVerification({Key? key}) : super(key: key);

  @override
  State<ForgetPassPhoneVerification> createState() => _ForgetPassPhoneVerificationState();
}

class _ForgetPassPhoneVerificationState extends State<ForgetPassPhoneVerification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 73,),
                Center(child:
                ShowUpAni(
                  direction: Direction.horizontal,
                  duration: const Duration(milliseconds: 1000),
                  child_widget: Image.asset('assets/images/logo.png'),)),

                const SizedBox(height: 72,),

                const ShowUpAni(
                  direction: Direction.vertical,
                  duration: Duration(milliseconds: 1200),
                  child_widget: Text(
                    'Phone Verification',
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ),

                const SizedBox(height: 3,),

                const ShowUpAni(
                  direction: Direction.vertical,
                  duration: Duration(milliseconds: 1200),
                  child_widget: Text(
                    'We have sent code to your phone:',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),

                const SizedBox(height: 10,),

                ShowUpAni(
                  direction: Direction.vertical,
                  duration: const Duration(milliseconds: 1200),
                  child_widget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '+91 000 00000000',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(width: 3,),
                      Image.asset('assets/images/pen.png')
                    ],
                  ),
                ),
                /*Image.asset('assets/images/pen.png'),*/
                const SizedBox(height: 32,),

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



                const SizedBox(height: 50,),

                /// TextFields
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    const ShowUpAni(
                        direction: Direction.horizontal,
                        duration: Duration(milliseconds: 1400),
                        child_widget: CustomVerificationTextfield()),
                    const ShowUpAni(
                        direction: Direction.horizontal,
                        duration: Duration(milliseconds: 1600),
                        child_widget: CustomVerificationTextfield()),
                    const ShowUpAni(
                        direction: Direction.horizontal,
                        duration: Duration(milliseconds: 1800),
                        child_widget: CustomVerificationTextfield()),
                    const ShowUpAni(
                        direction: Direction.horizontal,
                        duration: Duration(milliseconds: 2000),
                        child_widget: CustomVerificationTextfield()),


                  ],
                ),

                SizedBox(height: 4.h,),

                ShowUpAni(
                  direction: Direction.horizontal,
                  duration: const Duration(milliseconds: 2200),
                  child_widget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Didn't receive code?",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 4,),
                      InkWell(
                        onTap: (){
                          Get.to(const ResendCode());
                        },
                        child: Text(
                          'Resend',
                          style: TextStyle(
                              fontSize: 16,
                              color: AppColors.customRedColor,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 5.h,),

                ShowUpAni(
                  direction: Direction.horizontal,
                  duration: const Duration(milliseconds: 2200),
                  child_widget: CustomButton(
                    ontap: () async {
                      showBottomSheettttt();
                    },
                    button_name: 'Verify Account',
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  void showBottomSheettttt() => showModalBottomSheet(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )
    ),
    context: context,
    builder: (context) => Container(
      height: 50.h,
      child: Column(
        children: [
          const SizedBox(height: 60,),
          Image.asset('assets/images/verifytick.png'),
          const SizedBox(height: 20,),

          const Text(
            'Verified!',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 5,),

          const Text(
            'Hurrah! You have successfully',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 3,),
          const Text(
            'verified the account',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 28,),

          GestureDetector(
            onTap: (){
              Get.to(const ResetPassword());

            },
            child: Container(
              width: 344,
              height:50,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'Set New Password',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );

}