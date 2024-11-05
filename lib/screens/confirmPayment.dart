import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fundraiser/screens/verification_phone_number_v3/verification_phone_screen1.dart';
import 'package:fundraiser/screens/view_cart/view_cart_screen.dart';
import 'package:fundraiser/utils/custom_widgets/buttonForConfirmPaymentContainer.dart';
import 'package:fundraiser/utils/custom_widgets/custom_button.dart';
import 'package:fundraiser/utils/custom_widgets/custom_textfield2.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:status_stepper/status_stepper.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../utils/anim/show_up_anim.dart';
import '../utils/app_colors.dart';
import '../utils/custom_widgets/custom_textfield.dart';
import '../utils/custom_widgets/custom_verification_textfield.dart';
import '../utils/custom_widgets/password_textfield.dart';

class ConfirmPayment extends StatefulWidget {
  const ConfirmPayment({Key? key}) : super(key: key);

  @override
  State<ConfirmPayment> createState() => _ConfirmPaymentState();
}

class _ConfirmPaymentState extends State<ConfirmPayment> {

  final statuses = List.generate(
    3,
        (index) => SizedBox.square(
      dimension: 32,
      child: Center(child: Text(
        ///Stepper always starts from index = 0 ,
        '${index+1}',/// if we want to start our stepper from index = 1 we simply do this ,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500),)),
    ),
  );

  int curIndex = 2;
  int lastIndex = -1;

  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.containerColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap:(){
                        Get.off(ViewCart());
                        },
                        child: Image.asset('assets/images/cross.png')),
                    const SizedBox(width: 25,),
                    const Text(
                      'Cart',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height:17,),

              Container(
                width: 74.w,
                child: StatusStepper(
                  connectorCurve: Curves.easeIn,
                  itemCurve: Curves.easeOut,
                  activeColor: AppColors.customRedColor,
                  disabledColor: AppColors.viewCartContainerUnderline,
                  animationDuration: const Duration(milliseconds: 500),
                  children: statuses,
                  lastActiveIndex: lastIndex,
                  currentIndex: curIndex,
                  connectorThickness: 7,
                ),
              ),


              /// 123Stack
              /*Stack(
                children:[
                  Container(
                    width: double.infinity,
                    height: 27,
                    color: AppColors.viewCartContainer,
                  ),

                  Positioned(
                    left: 56,
                    child: Container(
                      width: 27,
                      height: 27,
                      decoration: BoxDecoration(
                        color: AppColors.customRedColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 185,
                    child: Container(
                      width: 27,
                      height: 27,
                      decoration: BoxDecoration(
                        color: AppColors.customRedColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          '2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 325,
                    child: Container(
                      width: 27,
                      height: 27,
                      decoration: BoxDecoration(
                        color: AppColors.customRedColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),*/

              const SizedBox(height: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Menu',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const Text(
                    'Cart',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Check out',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.greyColorText
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShowUpAnimation(
                      delayStart: const Duration(milliseconds: 800),
                      animationDuration: const Duration(milliseconds: 800),
                      curve: Curves.fastLinearToSlowEaseIn,
                      direction: Direction.horizontal,
                      offset: 0.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(

                            children: [
                              Image.asset('assets/images/map.png'),
                              const SizedBox(width: 15,),
                              const Text(
                                'Delivery Address',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),

                          Image.asset('assets/images/pen.png'),


                        ],
                      ),
                    ),
                    const SizedBox(height: 2,),

                    ShowUpAnimation(
                      delayStart: const Duration(milliseconds: 1000),
                      animationDuration: const Duration(milliseconds: 1000),
                      curve: Curves.fastLinearToSlowEaseIn,
                      direction: Direction.horizontal,
                      offset: 0.5,
                      child: Container(
                        width: double.infinity,
                        height: 140,
                        decoration: BoxDecoration(
                          color: AppColors.confirmPaymentContainer,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),

                    ShowUpAnimation(
                      delayStart: const Duration(milliseconds: 1200),
                      animationDuration: const Duration(milliseconds: 1200),
                      curve: Curves.fastLinearToSlowEaseIn,
                      direction: Direction.horizontal,
                      offset: 0.5,
                      child: const Text(
                        'Payment Method',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight:  FontWeight.w500,

                        ),
                      ),
                    ),

                    const SizedBox(height: 10,),

                    ShowUpAnimation(
                      delayStart: const Duration(milliseconds: 1400),
                      animationDuration: const Duration(milliseconds: 1400),
                      curve: Curves.fastLinearToSlowEaseIn,
                      direction: Direction.vertical,
                      offset: 0.5,
                      child: paymentMethodContainer(
                        'Debit/Credit Card',
                        'assets/images/visa.png',
                        Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          activeColor: AppColors.customRedColor,
                          checkColor: Colors.transparent,
                          value: isChecked1,
                          onChanged: (bool? newValue) {
                            setState(() {
                              isChecked1 = newValue!;
                            });
                          },
                        ),
                        /*_isCheckedDebitCard*/
                      ),
                    ),
                    const SizedBox(height: 8,),

                    ShowUpAnimation(
                      delayStart: const Duration(milliseconds: 1400),
                      animationDuration: const Duration(milliseconds: 1400),
                      curve: Curves.fastLinearToSlowEaseIn,
                      direction: Direction.vertical,
                      offset: 0.5,
                      child: paymentMethodContainer(
                        'PayPal',
                        'assets/images/paypal.png',
                        Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          activeColor: AppColors.customRedColor,
                          checkColor: Colors.transparent,
                          value: isChecked2,
                          onChanged: (bool? newValue) {
                            setState(() {
                              isChecked2 = newValue!;
                            });
                          },
                        ),
                        /*_isCheckedPayPal*/
                      ),
                    ),
                    const SizedBox(height: 8,),

                    ShowUpAnimation(
                      delayStart: const Duration(milliseconds: 1400),
                      animationDuration: const Duration(milliseconds: 1400),
                      curve: Curves.fastLinearToSlowEaseIn,
                      direction: Direction.vertical,
                      offset: 0.5,
                      child: paymentMethodContainer(
                        'Cash',
                        'assets/images/cash.png',
                        Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          activeColor: AppColors.customRedColor,
                          checkColor: Colors.transparent,
                          value: isChecked3,
                          onChanged: (bool? newValue) {
                            setState(() {
                              isChecked3 = newValue!;
                            });
                          },
                        ),
                        /*_isCheckedCash*/

                      ),
                    ),
                    const SizedBox(height: 8,),
                    ShowUpAnimation(
                      delayStart: const Duration(milliseconds: 1400),
                      animationDuration: const Duration(milliseconds: 1400),
                      curve: Curves.fastLinearToSlowEaseIn,
                      direction: Direction.vertical,
                      offset: 0.5,
                      child: paymentMethodContainer(
                        'JTC Token',
                        'assets/images/jtc.png',
                        Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          activeColor: AppColors.customRedColor,
                          checkColor: Colors.transparent,
                          value: isChecked4,
                          onChanged: (bool? newValue) {
                            setState(() {
                              isChecked4 = newValue!;
                            });
                          },
                        ),
                        /*_isCheckedJTCToken*/
                      ),
                    ),
                    const SizedBox(height: 18,),

                    ShowUpAnimation(
                      delayStart: const Duration(milliseconds: 1600),
                      animationDuration: const Duration(milliseconds: 1600),
                      curve: Curves.fastLinearToSlowEaseIn,
                      direction: Direction.horizontal,
                      offset: 0.5,
                      child: const Text(
                        'Order Summary',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight:  FontWeight.w500,

                        ),
                      ),
                    ),



                    const SizedBox(height: 8,),

                    ShowUpAnimation(
                      delayStart: const Duration(milliseconds: 1800),
                      animationDuration: const Duration(milliseconds: 1800),
                      curve: Curves.fastLinearToSlowEaseIn,
                      direction: Direction.vertical,
                      offset: 0.5,
                      child: Container(
                        width: double.infinity,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Black Tea',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        ' \$ 24.00',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Black Tea',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        ' \$ 24.00',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: AppColors.viewCartContainerUnderline,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Delivery Time:',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: AppColors.viewCartScreenTextColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            'Delivery Fee:',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: AppColors.viewCartScreenTextColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            'Total:',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: AppColors.viewCartScreenTextColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),

                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [

                                          Text(
                                            '20 - 30 mins',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: AppColors.viewCartScreenTextColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            '20',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: AppColors.viewCartScreenTextColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            '240',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: AppColors.viewCartScreenTextColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),

                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 18,),




                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 25,),
                    ShowUpAnimation(

                        delayStart: const Duration(milliseconds: 1400),
                        animationDuration: const Duration(milliseconds: 1400),
                        curve: Curves.fastLinearToSlowEaseIn,
                        direction: Direction.vertical,
                        offset: 0.5,
                        child: CustomButton(button_name: 'Place Order',
                          ontap: (){
                            /*visaDebitCardAlert();*/
                            return showDialog(context: context, builder: (BuildContext context){
                              return Dialog(
                                child:  Container(
                                  width: 220,
                                  height: 260,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [

                                        const Text(
                                          'Visa Debit Card Details',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),

                                        const SizedBox(height: 10,),

                                        const Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Card Holder Name',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 3,),

                                        const CustomTextFieldWithoutIcon(hint_text: 'Enter Card Holder Name'),

                                        const SizedBox(height: 8,),

                                        const Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Card Number',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 3,),

                                        const CustomTextFieldWithoutIcon(hint_text: 'Card Number'),

                                        const SizedBox(height: 8,),

                                        const Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'CVC',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 3,),

                                        const CustomTextFieldWithoutIcon(hint_text: 'CVC'),

                                        const SizedBox(height: 20,),

                                        ///Select phone or email dialog box here
                                        buttonForConfirmPaymentContainer(button_name: 'Next',
                                          ontap: (){
                                            return showDialog(context: context, builder: (BuildContext context){
                                              return Dialog(
                                                child:  Container(
                                                  width: 250,
                                                  height: 260,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(15.0),
                                                    child: Column(
                                                      children: [

                                                        const Text(
                                                          'Select',
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w400,
                                                          ),
                                                        ),

                                                        const SizedBox(height: 19,),

                                                        ToggleSwitch(
                                                          minWidth: 100.0,
                                                          cornerRadius: 10.0,
                                                          activeBgColors: [[AppColors.customRedColor!], [AppColors.customRedColor!]],
                                                          activeFgColor: Colors.white,
                                                          inactiveBgColor: AppColors.confirmPaymentContainer,
                                                          inactiveFgColor: Colors.white,
                                                          initialLabelIndex: 0,
                                                          totalSwitches: 2,
                                                          labels: const ['Number', 'Email'],
                                                          radiusStyle: true,
                                                          onToggle: (index) {
                                                            print('switched to: $index');
                                                          },
                                                        ),

                                                        const SizedBox(height: 21,),

                                                        const Align(
                                                          alignment: Alignment.centerLeft,
                                                          child: Text(
                                                            'Phone Number',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              color: Colors.grey,
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(height: 3,),

                                                        /*CustomTextFieldPassword(),*/

                                                        ///Country COde Picker
                                                        IntlPhoneField(
                                                          decoration: InputDecoration(
                                                            filled: true,
                                                            fillColor: AppColors.confirmPaymentContainer,
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
                                                            contentPadding: const EdgeInsets.all(0.0),
                                                            border: OutlineInputBorder(
                                                              borderRadius: BorderRadius.circular(6.0),
                                                            ),
                                                            hintText: 'Phone Number',
                                                            hintStyle: TextStyle(color: Colors.grey[500],fontSize: 14),
                                                          ),
                                                          initialCountryCode: 'PK',
                                                          onChanged: (phone) {
                                                            print(phone.completeNumber);
                                                          },
                                                        ),


                                                        const SizedBox(height: 10,),
                                                        buttonForConfirmPaymentContainer(button_name: 'Request OTP',
                                                          ontap: (){

                                                          /// Verification Dialog Box
                                                            return showDialog(context: context, builder: (BuildContext context){
                                                              return Dialog(
                                                                child:  Container(
                                                                  width: 250,
                                                                  height: 260,
                                                                  decoration: BoxDecoration(
                                                                    color: Colors.white,
                                                                    borderRadius: BorderRadius.circular(10),
                                                                  ),
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.all(15.0),
                                                                    child: Column(
                                                                      children: [

                                                                        const Text(
                                                                          'Verfication Code',
                                                                          style: TextStyle(
                                                                            fontSize: 18,
                                                                            fontWeight: FontWeight.w400,
                                                                          ),
                                                                        ),

                                                                        const SizedBox(height: 7,),

                                                                        const Text(
                                                                          'We have sent the code verification.',
                                                                          style: TextStyle(
                                                                            fontSize: 12,
                                                                            fontWeight: FontWeight.w500,
                                                                          ),
                                                                        ),

                                                                        const SizedBox(height: 3,),

                                                                        const Text(
                                                                          'Your mobile number',
                                                                          style: TextStyle(
                                                                            fontSize: 12,
                                                                            fontWeight: FontWeight.w500,
                                                                          ),
                                                                        ),
                                                                        const SizedBox(height: 8,),

                                                                        Row(
                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                          children: [
                                                                            const Text(
                                                                              '+91 000 0000000',
                                                                              style: TextStyle(
                                                                                  fontSize: 12,
                                                                                  color: Colors.grey
                                                                              ),
                                                                            ),
                                                                            const SizedBox(width: 9,),

                                                                            Image.asset('assets/images/pen.png'),
                                                                          ],
                                                                        ),
                                                                        const SizedBox(height: 15,),

                                                                        ///Verifications TextFields
                                                                        Row(
                                                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                          children: [

                                                                            ShowUpAni(
                                                                              direction: Direction.horizontal,
                                                                              duration: const Duration(milliseconds:600),
                                                                              child_widget: Container(
                                                                                width: 30,
                                                                                height: 30,
                                                                                child: TextFormField(
                                                                                  keyboardType: TextInputType.number,
                                                                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                                                                  textAlign: TextAlign.center,
                                                                                  textInputAction: TextInputAction.next,
                                                                                  inputFormatters: [
                                                                                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                                                                    LengthLimitingTextInputFormatter(1),
                                                                                  ],
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
                                                                                          color: Colors.grey,
                                                                                          width: 1.5),
                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: const BorderSide(
                                                                                          color: Colors.grey,
                                                                                          width: 1.5),
                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                    ),
                                                                                    isDense: true,
                                                                                    contentPadding: const EdgeInsets.all(18.0),
                                                                                    border: OutlineInputBorder(
                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                    ),
                                                                                    hintText:'',
                                                                                    hintStyle: TextStyle(color: Colors.grey[500]),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            ShowUpAni(
                                                                              direction: Direction.horizontal,
                                                                              duration: const Duration(milliseconds: 600),
                                                                              child_widget: Container(
                                                                                width: 30,
                                                                                height: 30,
                                                                                child: TextFormField(
                                                                                  keyboardType: TextInputType.number,
                                                                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                                                                  textAlign: TextAlign.center,
                                                                                  textInputAction: TextInputAction.next,
                                                                                  inputFormatters: [
                                                                                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                                                                    LengthLimitingTextInputFormatter(1),
                                                                                  ],
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
                                                                                          color: Colors.grey,
                                                                                          width: 1.5),
                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: const BorderSide(
                                                                                          color: Colors.grey,
                                                                                          width: 1.5),
                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                    ),
                                                                                    isDense: true,
                                                                                    contentPadding: const EdgeInsets.all(18.0),
                                                                                    border: OutlineInputBorder(
                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                    ),
                                                                                    hintText:'',
                                                                                    hintStyle: TextStyle(color: Colors.grey[500]),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            ShowUpAni(
                                                                              direction: Direction.horizontal,
                                                                              duration: const Duration(milliseconds: 600),
                                                                              child_widget: Container(
                                                                                width: 30,
                                                                                height: 30,
                                                                                child: TextFormField(
                                                                                  keyboardType: TextInputType.number,
                                                                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                                                                  textAlign: TextAlign.center,
                                                                                  textInputAction: TextInputAction.next,
                                                                                  inputFormatters: [
                                                                                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                                                                    LengthLimitingTextInputFormatter(1),
                                                                                  ],
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
                                                                                          color: Colors.grey,
                                                                                          width: 1.5),
                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: const BorderSide(
                                                                                          color: Colors.grey,
                                                                                          width: 1.5),
                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                    ),
                                                                                    isDense: true,
                                                                                    contentPadding: const EdgeInsets.all(18.0),
                                                                                    border: OutlineInputBorder(
                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                    ),
                                                                                    hintText:'',
                                                                                    hintStyle: TextStyle(color: Colors.grey[500]),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            ShowUpAni(
                                                                              direction: Direction.horizontal,
                                                                              duration: const Duration(milliseconds: 600),
                                                                              child_widget: Container(
                                                                                width: 30,
                                                                                height: 30,
                                                                                child: TextFormField(
                                                                                  keyboardType: TextInputType.number,
                                                                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                                                                  textAlign: TextAlign.center,
                                                                                  textInputAction: TextInputAction.next,
                                                                                  inputFormatters: [
                                                                                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                                                                    LengthLimitingTextInputFormatter(1),
                                                                                  ],
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
                                                                                          color: Colors.grey,
                                                                                          width: 1.5),
                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: const BorderSide(
                                                                                          color: Colors.grey,
                                                                                          width: 1.5),
                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                    ),
                                                                                    isDense: true,
                                                                                    contentPadding: const EdgeInsets.all(18.0),
                                                                                    border: OutlineInputBorder(
                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                    ),
                                                                                    hintText:'',
                                                                                    hintStyle: TextStyle(color: Colors.grey[500]),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),



                                                                          ],
                                                                        ),


                                                                        const SizedBox(height: 35,),
                                                                        buttonForConfirmPaymentContainer(button_name: 'Submit',
                                                                          ontap: (){
                                                                          Get.to(const VerificationPhoneScreen1());

                                                                          },
                                                                        ),





                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              );

                                                            });


                                                          },
                                                        ),





                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );

                                            });

                                          },
                                        ),





                                      ],
                                    ),
                                  ),
                                ),
                              );

                            });
                          },
                        )),

                    const SizedBox(height: 20,),

                    ///VISA DEBIT CARD DETAILS CONTAINER

                    /*Container(
                      width: 250,
                      height: 260,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [

                            Text(
                              'Visa Debit Card Details',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),

                            SizedBox(height: 10,),

                            Align(
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Card Holder Name',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            SizedBox(height: 3,),

                            CustomTextFieldWithoutIcon(hint_text: 'Enter Card Holder Name'),

                            SizedBox(height: 8,),

                            Align(
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Card Number',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            SizedBox(height: 3,),

                            CustomTextFieldWithoutIcon(hint_text: 'Card Number'),

                            SizedBox(height: 8,),

                            Align(
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'CVC',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            SizedBox(height: 3,),

                            CustomTextFieldWithoutIcon(hint_text: 'CVC'),

                            SizedBox(height: 20,),

                            buttonForConfirmPaymentContainer(button_name: 'Next',
                              ontap: (){

                              },
                            ),





                          ],
                        ),
                      ),
                    ),*/

                    ///Verification Container
                    /*Container(
                      width: 250,
                      height: 220,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [

                            Text(
                              'Verfication Code',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),

                            SizedBox(height: 7,),

                            Text(
                              'We have sent the code verification.',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                            SizedBox(height: 3,),

                            Text(
                              'Your mobile number',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 8,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Text(
                                '+91 000 0000000',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey
                                ),
                              ),
                                SizedBox(width: 9,),

                                Image.asset('assets/images/pen.png'),
                              ],
                            ),
                            SizedBox(height: 15,),

                            ///Verifications TextFields
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [

                              ShowUpAni(
                                direction: Direction.horizontal,
                                duration: Duration(milliseconds: 2000),
                                child_widget: Container(
                                width: 30,
                                height: 30,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  textAlign: TextAlign.center,
                                  textInputAction: TextInputAction.next,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                    LengthLimitingTextInputFormatter(1),
                                  ],
                                  *//*onChanged: (value) {
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter email';
                      }
                      if (value.length>200){
                        return 'Cannot exceed 200 characters';
                      }
                      return null;

                    },*//*
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,

                                  ),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey[200],
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.grey,
                                          width: 1.5),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.grey,
                                          width: 1.5),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    isDense: true,
                                    contentPadding: const EdgeInsets.all(18.0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    hintText:'',
                                    hintStyle: TextStyle(color: Colors.grey[500]),
                                  ),
                                ),
                            ),
                              ),
                                ShowUpAni(
                                  direction: Direction.horizontal,
                                  duration: Duration(milliseconds: 2000),
                                  child_widget: Container(
                                    width: 30,
                                    height: 30,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      autovalidateMode: AutovalidateMode.onUserInteraction,
                                      textAlign: TextAlign.center,
                                      textInputAction: TextInputAction.next,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                        LengthLimitingTextInputFormatter(1),
                                      ],
                                      *//*onChanged: (value) {
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter email';
                      }
                      if (value.length>200){
                        return 'Cannot exceed 200 characters';
                      }
                      return null;

                    },*//*
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,

                                      ),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.grey,
                                              width: 1.5),
                                          borderRadius: BorderRadius.circular(6.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.grey,
                                              width: 1.5),
                                          borderRadius: BorderRadius.circular(6.0),
                                        ),
                                        isDense: true,
                                        contentPadding: const EdgeInsets.all(18.0),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(6.0),
                                        ),
                                        hintText:'',
                                        hintStyle: TextStyle(color: Colors.grey[500]),
                                      ),
                                    ),
                                  ),
                                ),
                                ShowUpAni(
                                  direction: Direction.horizontal,
                                  duration: Duration(milliseconds: 2000),
                                  child_widget: Container(
                                    width: 30,
                                    height: 30,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      autovalidateMode: AutovalidateMode.onUserInteraction,
                                      textAlign: TextAlign.center,
                                      textInputAction: TextInputAction.next,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                        LengthLimitingTextInputFormatter(1),
                                      ],
                                      *//*onChanged: (value) {
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter email';
                      }
                      if (value.length>200){
                        return 'Cannot exceed 200 characters';
                      }
                      return null;

                    },*//*
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,

                                      ),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.grey,
                                              width: 1.5),
                                          borderRadius: BorderRadius.circular(6.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.grey,
                                              width: 1.5),
                                          borderRadius: BorderRadius.circular(6.0),
                                        ),
                                        isDense: true,
                                        contentPadding: const EdgeInsets.all(18.0),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(6.0),
                                        ),
                                        hintText:'',
                                        hintStyle: TextStyle(color: Colors.grey[500]),
                                      ),
                                    ),
                                  ),
                                ),
                                ShowUpAni(
                                  direction: Direction.horizontal,
                                  duration: Duration(milliseconds: 2000),
                                  child_widget: Container(
                                    width: 30,
                                    height: 30,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      autovalidateMode: AutovalidateMode.onUserInteraction,
                                      textAlign: TextAlign.center,
                                      textInputAction: TextInputAction.next,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                        LengthLimitingTextInputFormatter(1),
                                      ],
                                      *//*onChanged: (value) {
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter email';
                      }
                      if (value.length>200){
                        return 'Cannot exceed 200 characters';
                      }
                      return null;

                    },*//*
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,

                                      ),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.grey,
                                              width: 1.5),
                                          borderRadius: BorderRadius.circular(6.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.grey,
                                              width: 1.5),
                                          borderRadius: BorderRadius.circular(6.0),
                                        ),
                                        isDense: true,
                                        contentPadding: const EdgeInsets.all(18.0),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(6.0),
                                        ),
                                        hintText:'',
                                        hintStyle: TextStyle(color: Colors.grey[500]),
                                      ),
                                    ),
                                  ),
                                ),



                              ],
                            ),



                            SizedBox(height: 25,),
                            buttonForConfirmPaymentContainer(button_name: 'Submit',
                              ontap: (){

                              },
                            ),


                          ],
                        ),
                      ),
                    ),*/

                    const SizedBox(height: 20),

                    /// Select Container
                    /*Container(
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [

                            Text(
                              'Select',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),

                            SizedBox(height: 19,),

                            ToggleSwitch(
                              minWidth: 100.0,
                              cornerRadius: 10.0,
                              activeBgColors: [[AppColors.customRedColor!], [AppColors.customRedColor!]],
                              activeFgColor: Colors.white,
                              inactiveBgColor: AppColors.confirmPaymentContainer,
                              inactiveFgColor: Colors.white,
                              initialLabelIndex: 0,
                              totalSwitches: 2,
                              labels: ['Number', 'Email'],
                              radiusStyle: true,
                              onToggle: (index) {
                                print('switched to: $index');
                              },
                            ),

                            SizedBox(height: 21,),

                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Phone Number',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            SizedBox(height: 3,),

                            *//*CustomTextFieldPassword(),*//*

                            ///Country COde Picker
                            IntlPhoneField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColors.confirmPaymentContainer,
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
                                contentPadding: const EdgeInsets.all(0.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                hintText: 'Phone Number',
                                hintStyle: TextStyle(color: Colors.grey[500],fontSize: 14),
                              ),
                              initialCountryCode: 'PK',
                              onChanged: (phone) {
                                print(phone.completeNumber);
                              },
                            ),


                            SizedBox(height: 28,),
                            buttonForConfirmPaymentContainer(button_name: 'Request OTP',
                              ontap: (){

                              },
                            ),





                          ],
                        ),
                      ),
                    ),*/


                  ],




                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
  Widget paymentMethodContainer(
      String methodName,
      String image,
      Widget checkBox,
      )=>
      Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                checkBox,

                Text(
                  methodName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(right: 11.0),
              child: Image.asset(image,),
            )
          ],
        ),
      );
  Widget visaDebitCardAlert()=>
      AlertDialog(
        content: Container(
          width: 250,

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [

                const Text(
                  'Visa Debit Card Details',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                const SizedBox(height: 10,),

                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Card Holder Name',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 3,),

                const CustomTextFieldWithoutIcon(hint_text: 'Enter Card Holder Name'),

                const SizedBox(height: 8,),

                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Card Number',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 3,),

                const CustomTextFieldWithoutIcon(hint_text: 'Card Number'),

                const SizedBox(height: 8,),

                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'CVC',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 3,),

                const CustomTextFieldWithoutIcon(hint_text: 'CVC'),

                const SizedBox(height: 20,),

                buttonForConfirmPaymentContainer(button_name: 'Next',
                  ontap: (){

                  },
                ),





              ],
            ),
          ),
        ),
      );

}


