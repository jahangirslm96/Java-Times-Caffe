
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../screens/verification_phone_number_v3/verification_phone_screen1.dart';
import '../../utils/anim/show_up_anim.dart';
import '../../utils/app_colors.dart';
import '../../utils/custom_widgets/buttonForConfirmPaymentContainer.dart';
import '../../utils/custom_widgets/custom_textfield2.dart';

class HomeController extends GetxController{




  bool _isCoffeeSelected = true;
  bool get isCoffeeSelected =>_isCoffeeSelected;


  int _addSub = 0;
  int get addSub=> _addSub;

  RxBool _isActive = false.obs;


  var value = 0.0.obs;


  int _selectedIndex = 0;
  int get selectedIndex =>_selectedIndex;


  @override
  void onInit() {

    //openBox();
    super.onInit();
  }

  ///Opening Dialog box on start of the screen
  /*void openBox ()async{
    await Future.delayed(Duration(seconds: 1));
    Get.dialog(
        Dialog(
          child:  Container(
            width: 220,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [

                  const Text(
                    'Select Your Order Type',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          width: 55,
                          height:18,
                          decoration: BoxDecoration(
                            color: AppColors.customRedColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Delivery',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          width: 55,
                          height:18,
                          decoration: BoxDecoration(
                            color: AppColors.confirmPaymentContainer,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'PickUp',
                              style: TextStyle(
                                color: AppColors.viewCartScreenTextColor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          width: 55,
                          height:18,
                          decoration: BoxDecoration(
                            color: AppColors.confirmPaymentContainer,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Curbside',
                              style: TextStyle(
                                color: AppColors.viewCartScreenTextColor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 15,),

                  Text('10 Minutes',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.viewCartScreenDivider
                    ),
                  ),





                ],
              ),
            ),
          ),
        ),
    );
  }*/


  List<bool> isSelected = [true, false, false, false];
  List<bool> isSelected1 = [true, false, false, false];

  void toggleSelection(int index) {
    update();
    for (int i = 0; i < isSelected.length; i++) {
      if (i == index) {
        isSelected[i] = true;
      } else {
        isSelected[i] = false;
      }
    }
  }
  void toggleSelection1(int index) {
    update();
    for (int i = 0; i < isSelected1.length; i++) {
      if (i == index) {
        isSelected1[i] = true;
      } else {
        isSelected1[i] = false;
      }
    }
  }



  void onItemTapped(int index) {

    update();
    _selectedIndex = index;

  }


  void textColorEnable(){
    _isCoffeeSelected ? AppColors.customRedColor : null;
  }



  void increase(){
    _addSub++;
    update();
  }


  void decrease(){
    _addSub--;
    update();
  }


  void toggle() {
    _isActive.value = !_isActive.value;
  }



}

