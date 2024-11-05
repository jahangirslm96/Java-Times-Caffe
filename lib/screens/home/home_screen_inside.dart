import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'package:fundraiser/controllers/home_controller/home_controller.dart';
import 'package:fundraiser/utils/custom_widgets/view_cart_button.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../../utils/app_colors.dart';
import '../view_cart/view_cart_screen.dart';

class HomeInside extends StatelessWidget {
   HomeInside({Key? key}) : super(key: key);





  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [

            /*Container(
              decoration: BoxDecoration(
                color: AppColors.customGrey,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Icon(Icons.arrow_back,size: 40 ,color: Colors.white,),

              Text(
                'Black Tea',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  color: Colors.white
                ),
              ),
                  Image.asset('assets/images/home/heart.png'),

                ],
              ),
            ),*/

            Container(
              height: double.maxFinite,
              width: double.maxFinite,
              color: AppColors.backgroundHome,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(height: 41.h,),

                      ///Grey Button
                      Container(
                        height: 60,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: AppColors.customGrey,
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  const Text('\$19.99',style: TextStyle(color: Colors.white,fontSize: 20),),
                                  const SizedBox(width: 13,),
                                  const Text('\$24.99',style: TextStyle(color: Colors.white,fontSize: 18),),
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  const Text('(4.9) Reviews',style: TextStyle(color: Colors.white,fontSize: 12),),
                                  const SizedBox(width: 13,),
                                  Container(
                                    width: 60,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: AppColors.customGrey1,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const Icon(Icons.star,color: Colors.white,size: 20,),

                                        const Text(
                                          '4.9',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                      ),


                      const SizedBox(height: 29,),
                      const Text(
                        'Description',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),

                      ),
                      const SizedBox(height: 6,),
                      const Text(
                        'Flavour so strong, it’ll awaken all five of your senses!',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                        ),

                      ),
                      const SizedBox(height: 24,),
                      const Text(
                        'Quantity',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),

                      ),

                      const SizedBox(height: 15,),

                      /// Quantity Row
                      Row(
                        children: [
                          ///  Decrease Container
                          InkWell(
                            onTap:(){
                              controller.decrease();
              },
                            child: Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                color: AppColors.customRedColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(child: const Icon(Icons.remove,color: Colors.white,)),
                            ),
                          ),
                          const SizedBox(width: 15,),

                          GetBuilder<HomeController>(builder: (_){
                            return Container(
                              width: 60,
                              height: 24,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child:Center(
                                child: Text(
                                  controller.addSub.toString(),
                                  style: const TextStyle(
                                      fontSize: 16
                                  ),
                                ),
                              ),
                            );
                          }),

                          const SizedBox(width: 15,),
                          InkWell(
                            onTap: (){
                              controller.increase();
                            },
                            child: Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                color: AppColors.customRedColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(child: Icon(Icons.add,color: Colors.white,size: 20,)),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 35,),

                      const Text(
                        'Size Option',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),

                      ),


                      /// Slider


                      Obx(() => Slider(
                        activeColor: Colors.red,
                        inactiveColor: Colors.grey,
                        value: controller.value.value,
                        min: 0,
                        max: 3,
                        divisions: 3,
                        onChanged: (newValue) {
                          controller.value.value = newValue;
                        },
                      ),),
                      /*Obx(() => Text('${controller.value.value.toStringAsFixed(0)}')),
                      SizedBox(height: 5),*/
                      /// Small Medium Large
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GetBuilder<HomeController>(builder: (_){
                            return ShowUpAnimation(
                              delayStart: const Duration(milliseconds: 1000),
                              animationDuration: const Duration(milliseconds: 1000),
                              curve: Curves.fastLinearToSlowEaseIn,
                              direction: Direction.horizontal,
                              offset: 0.5,
                              child: Text('Small',
                                style: TextStyle(
                                  color: AppColors.greyColorText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            );
                          }),

                          ShowUpAnimation(
                            delayStart: const Duration(milliseconds: 1200),
                            animationDuration: const Duration(milliseconds: 1200),
                            curve: Curves.fastLinearToSlowEaseIn,
                            direction: Direction.horizontal,
                            offset: 0.5,
                            child: Text('Medium',
                              style: TextStyle(
                                color: AppColors.greyColorText,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          ShowUpAnimation(
                            delayStart: const Duration(milliseconds: 1400),
                            animationDuration: const Duration(milliseconds: 1400),
                            curve: Curves.fastLinearToSlowEaseIn,
                            direction: Direction.horizontal,
                            offset: 0.5,
                            child: Text('Large',
                              style: TextStyle(
                                color: AppColors.greyColorText,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),

                          ShowUpAnimation(
                            delayStart: const Duration(milliseconds: 1600),
                            animationDuration: const Duration(milliseconds: 1600),
                            curve: Curves.fastLinearToSlowEaseIn,
                            direction: Direction.horizontal,
                            offset: 0.5,
                            child: Text('Extra Large',
                              style: TextStyle(
                                color: AppColors.greyColorText,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 35,),


                      ///Temperature
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Temperature',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                            ),

                          ),

                          Text(
                            'Choose 1',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              color: AppColors.greyColorText
                            ),

                          ),
                        ],
                      ),

                      const SizedBox(height: 20,),

                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                              color: AppColors.greyContainerColor,
                              borderRadius: BorderRadius.circular(5),
                            ),

                            child: const Center(
                              child: Text(
                                'Hot',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(width: 30,),
                          Container(
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                              color: AppColors.customRedColor,
                              borderRadius: BorderRadius.circular(5),
                            ),

                            child: const Center(
                              child: Text(
                                'Iced',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),



                      const SizedBox(height: 50,),
                      /// Type of milk
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Type of Milk',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                            ),

                          ),

                          Text(
                            'Choose 1',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.greyColorText
                            ),

                          ),
                        ],
                      ),

                      const SizedBox(height: 20,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 75,
                            height: 30,
                            decoration: BoxDecoration(
                              color: AppColors.greyContainerColor,
                              borderRadius: BorderRadius.circular(5),
                            ),

                            child: const Center(
                              child: Text(
                                'Regular',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 75,
                            height: 30,
                            decoration: BoxDecoration(
                              color: AppColors.customRedColor,
                              borderRadius: BorderRadius.circular(5),
                            ),

                            child: const Center(
                              child: Text(
                                'Skimmed',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 75,
                            height: 30,
                            decoration: BoxDecoration(
                              color: AppColors.greyContainerColor,
                              borderRadius: BorderRadius.circular(5),
                            ),

                            child: const Center(
                              child: Text(
                                'Regular',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),


                      const SizedBox(height: 35,),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Addons',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                            ),

                          ),

                          Text(
                            'Choose 1',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.greyColorText
                            ),

                          ),
                        ],
                      ),

                      const SizedBox(height: 20,),

                      Row(
                        children: [
                          Container(
                            width: 150,
                            height: 30,
                            decoration: BoxDecoration(
                              color: AppColors.greyContainerColor,
                              borderRadius: BorderRadius.circular(5),
                            ),

                            child: const Center(
                              child: Text(
                                'Moose it (Extra Shot)',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(width: 30,),
                          Container(
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                              color: AppColors.customRedColor,
                              borderRadius: BorderRadius.circular(5),
                            ),

                            child: const Center(
                              child: Text(
                                'Oreo',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),


                      const SizedBox(height: 50,),

                      const Text(
                        'Addons',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),

                      ),

                      const SizedBox(height: 20,),

                  Container(
                    color: const Color(0xF3F3F3),
                    height: 100,
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: (value) {
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
                        contentPadding: const EdgeInsets.all(40.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        hintText: 'Add Note',
                        hintStyle: TextStyle(color: Colors.grey[500]),
                      ),
                    ),
                  ),

                      const SizedBox(height: 30,),

                     ViewCartButton(ontap: (){
                        Get.to(ViewCart());
                      },),

                    ],
                  ),
                ),
              ),

            ),

            ///App bar
            Container(
              width: double.infinity,
              height: 10.h,
              color: AppColors.customGrey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        InkWell(
                          onTap:(){
                            Get.back();
                          },
                            child: const Icon(Icons.arrow_back,size: 40 ,color: Colors.white,)),


                        const Text(
                          'Black Tea',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            color: Colors.white
                          ),
                        ),
                        Image.asset('assets/images/home/heart.png'),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            ///Coffee Container
            Positioned(
              top: 60,
              child: Container(
                height: 250,
                width: 410,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                ),
                child: Center(child: Image.asset('assets/images/home/coffee.png')),

              ),
            ),






          ],
        ),



        bottomNavigationBar:
        CircleBottomNavigationBar(
          circleColor: AppColors.customRedColor,
          activeIconColor: Colors.white,
          inactiveIconColor: Colors.grey,
          tabs: [
            TabData(icon: Icons.home),
            TabData(icon: Icons.favorite),
            TabData(icon: Icons.wallet),
            TabData(icon: Icons.account_circle_rounded),
            TabData(icon: Icons.shopping_cart),
          ],
          onTabChangedListener: (index) => ''/*setState(() => currentPage = index)*/
      ),),
    );
  }
}
