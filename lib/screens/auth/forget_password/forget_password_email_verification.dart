import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fundraiser/screens/auth/forget_password/resend_code_screen.dart';
import 'package:fundraiser/screens/auth/forget_password/reset_password.dart';
import 'package:fundraiser/utils/custom_widgets/custom_bottom_sheet.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../../../utils/anim/show_up_anim.dart';
import '../../../utils/app_colors.dart';

import '../../../utils/custom_widgets/custom_button.dart';
import '../../../utils/custom_widgets/custom_textfield.dart';
import '../../../utils/custom_widgets/custom_verification_textfield.dart';

class ForgetPassEmailVerify extends StatefulWidget {
  const ForgetPassEmailVerify({Key? key}) : super(key: key);

  @override
  State<ForgetPassEmailVerify> createState() => _ForgetPassEmailVerifyState();
}

class _ForgetPassEmailVerifyState extends State<ForgetPassEmailVerify> {
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
                    'Email Verification',
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
                    'We have sent code to your email:',
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
                        'F***d@j**.com',
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
                    'Email Address',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 3,),
                const CustomTextField(hint_text: 'Email Address', icon: Icons.mail_outline_sharp),



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

