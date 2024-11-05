import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fundraiser/controllers/home_controller/home_controller.dart';
import 'package:fundraiser/screens/auth/login.dart';
import 'package:fundraiser/screens/home/events/events_screen.dart';
import 'package:fundraiser/screens/home/home_screen_inside.dart';
import 'package:fundraiser/screens/view_cart/view_cart_screen.dart';
import 'package:fundraiser/utils/app_colors.dart';
import 'package:fundraiser/utils/image_utils.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../../utils/custom_widgets/buttonForConfirmPaymentContainer.dart';
import '../../utils/custom_widgets/custom_button.dart';
import '../../utils/custom_widgets/custom_textfield2.dart';
import '../../utils/custom_widgets/view_cart_button.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {



    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    HomeController controller = Get.put(HomeController());

    String _selectedItem = 'Item 1';

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: ViewCartButton(ontap: (){
          Get.to(ViewCart());
        },),
        key: _scaffoldKey,
        drawer: Drawer(
          backgroundColor: AppColors.drawerColor,
          child: SingleChildScrollView(
            child: Column(

              children: [
                Container(
                  /*height: 40.h,*/
                  decoration: BoxDecoration(
                    color: AppColors.drawerColor,
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        InkWell(
                          onTap: (){
                            Get.back();
                          },
                            child: const Icon(Icons.arrow_back,color: Colors.white,)),

                        const SizedBox(height: 65,),
                        ///Stack
                        Container(
                          height: 160,
                          color: AppColors.drawerColor,
                          child: Stack(
                            children: [
                              Image.asset('assets/images/home/logodraw.png'),
                              Positioned
                                (left: 55,
                                  child: Image.asset('assets/images/home/drawea.png')),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20,),

                        const Center(
                          child: Text(
                            'FAHAD',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                            ),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Center(
                          child: Text(
                            'fahad.khan@pluton.ltd',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColors.customGrey1
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20,),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 2.0, color: AppColors.drawerBorderColor),
                    ),
                  ),
                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60.0),
                        child: Image.asset('assets/images/home/profile.png'),
                      ),

                      const SizedBox(width: 15,),
                      const Expanded(
                        flex: 4,
                        child: Text(
                          'Profile',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 2.0, color: AppColors.drawerBorderColor),
                    ),
                  ),
                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60.0),
                        child: Image.asset('assets/images/home/fav.png'),
                      ),

                      const SizedBox(width: 15,),
                      const Expanded(
                        flex: 4,
                        child: Text(
                          'Favorite',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ///Order
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 2.0, color: AppColors.drawerBorderColor),
                    ),
                  ),
                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60.0),
                        child: Image.asset('assets/images/home/shopping.png'),
                      ),

                      const SizedBox(width: 15,),
                      const Expanded(
                        flex: 4,
                        child: Text(
                          'Order',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ///HelpCenter
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 2.0, color: AppColors.drawerBorderColor),
                    ),
                  ),
                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60.0),
                        child: Image.asset('assets/images/home/help.png'),
                      ),

                      const SizedBox(width: 15,),
                      const Expanded(
                        flex: 4,
                        child: Text(
                          'Help Center',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ///Privacy Policy
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 2.0, color: AppColors.drawerBorderColor),
                    ),
                  ),
                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60.0),
                        child: Image.asset('assets/images/home/privacy.png'),
                      ),

                      const SizedBox(width: 15,),
                      const Expanded(
                        flex: 4,
                        child: Text(
                          'Privacy Policy',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                /// Promotion
                InkWell(
                  onTap:() async{
                    return showDialog(context: context, builder: (BuildContext context){
                      return Dialog(
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

                                const SizedBox(height: 20,),

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
                                        child: const Center(
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

                                const SizedBox(height: 15,),

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
                      );

                    });
                  },
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 2.0, color: AppColors.drawerBorderColor),
                      ),
                    ),
                    child: Row(

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 60.0),
                          child: Image.asset('assets/images/home/privacy.png'),
                        ),

                        const SizedBox(width: 15,),
                        const Expanded(
                          flex: 4,
                          child: Text(
                            'Promotion',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                /// Terms and conditions
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 2.0, color: AppColors.drawerBorderColor),
                    ),
                  ),
                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60.0),
                        child: Image.asset('assets/images/home/privacy.png'),
                      ),

                      const SizedBox(width: 15,),
                      const Expanded(
                        flex: 4,
                        child: Text(
                          'Profile',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 2.0, color: AppColors.drawerBorderColor),
                    ),
                  ),
                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 52.0),
                        child: Image.asset('assets/images/home/settings.png'),
                      ),

                      const SizedBox(width: 15,),
                      const Expanded(
                        flex: 4,
                        child: Text(
                          'Setting',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 2.0, color: AppColors.drawerBorderColor),
                    ),
                  ),
                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60.0),
                        child: Image.asset('assets/images/home/rewards.png'),
                      ),

                      const SizedBox(width: 15,),
                      const Expanded(
                        flex: 4,
                        child: Text(
                          'Reward',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 2.0, color: AppColors.drawerBorderColor),
                      bottom: BorderSide(width: 2.0, color: AppColors.drawerBorderColor),
                    ),
                  ),
                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60.0),
                        child: Image.asset('assets/images/home/faq.png'),
                      ),

                      const SizedBox(width: 15,),
                      const Expanded(
                        flex: 4,
                        child: Text(
                          'FAQ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

            const SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Get.to(const LoginScreen());
              },
              child: Container(
                width: 190,
                height:40,
                decoration: BoxDecoration(
                  color: AppColors.customRedColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'LOGOUT',
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
        ),

        body: Stack(
          children: [

            SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                height: Get.height * 1.5,
                color: AppColors.backgroundHome,
                ///Remove this padding if necessary
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(

                    children: [

                      SizedBox(height: 35.h,),

                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Align(
                          alignment:Alignment.centerLeft,
                          child: ShowUpAnimation(
                            delayStart: const Duration(milliseconds: 1000),
                            animationDuration: const Duration(milliseconds: 1000),
                            curve: Curves.fastLinearToSlowEaseIn,
                            direction: Direction.horizontal,
                            offset: 0.5,
                            child: const Text('Order Type',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      ShowUpAnimation(
                        delayStart: const Duration(milliseconds: 1000),
                        animationDuration: const Duration(milliseconds: 1000),
                        curve: Curves.fastLinearToSlowEaseIn,
                        direction: Direction.horizontal,
                        offset: 0.5,
                        child: SizedBox(
                          height: 20.h,
                          child: GridView(
                            physics:const NeverScrollableScrollPhysics(),
                            gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              childAspectRatio: 1,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 0,
                            ),
                            children:[
                              orderType(
                                  'ordertype1.png',
                                  'Pick up',

                              ),
                              orderType(
                                'ordertype2.png',
                                'Curbside',
                              ),
                              orderType(
                                'ordertype3.png',
                                'Delivery'
                              ),
                              GestureDetector(
                                onTap: (){
                                  Get.to(EventsScreen());
                                },
                                child: orderType(
                                  'ordertype4.png',
                                  'Events,Java Break',

                                ),
                              ),
                              orderType(
                                'ordertype5.png',
                                'Market',
                              ),
                              orderType(
                                'ordertype6.png',
                                'Subscribe',

                              ),
                              orderType(
                                'ordertype7.png',
                                'JTC Token Gift',

                              ),
                              orderType(
                                'ordertype8.png',
                                'Offers',
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      /// Food Categories Rows(Coffee , Smoothies , Donut , Sandwich)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          ShowUpAnimation(
                            delayStart: const Duration(milliseconds: 1000),
                            animationDuration: const Duration(milliseconds: 1000),
                            curve: Curves.fastLinearToSlowEaseIn,
                            direction: Direction.horizontal,
                            offset: 0.5,
                            child: foodCategoryText(
                              'Coffee',
                              0,
                            ),
                          ),
                          ShowUpAnimation(
                            delayStart: const Duration(milliseconds: 1200),
                            animationDuration: const Duration(milliseconds: 1200),
                            curve: Curves.fastLinearToSlowEaseIn,
                            direction: Direction.horizontal,
                            offset: 0.5,
                            child: foodCategoryText(
                              'Smoothies',
                              1,
                            ),
                          ),
                          ShowUpAnimation(
                            delayStart: const Duration(milliseconds: 1400),
                            animationDuration: const Duration(milliseconds: 1400),
                            curve: Curves.fastLinearToSlowEaseIn,
                            direction: Direction.horizontal,
                            offset: 0.5,
                            child: foodCategoryText(
                              'Donut',
                              2,
                            ),
                          ),
                          ShowUpAnimation(
                            delayStart: const Duration(milliseconds: 1600),
                            animationDuration: const Duration(milliseconds: 1600),
                            curve: Curves.fastLinearToSlowEaseIn,
                            direction: Direction.horizontal,
                            offset: 0.5,
                            child: foodCategoryText(
                              'Sandwich',
                              3,
                            ),
                          ),


                        ],
                      ),

                      SizedBox(height: 2.h,),

                      /// Popular Newest Recommended Containers
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          ShowUpAnimation(
                      delayStart: const Duration(milliseconds: 1800),
                            animationDuration: const Duration(milliseconds: 1800),
                    curve: Curves.fastLinearToSlowEaseIn,
                    direction: Direction.horizontal,
                    offset: 0.5,
                            child: popularContainer(
                                'assets/images/home/popular.png',
                              'Popular',
                              0
                            ),
                          ),
                          ShowUpAnimation(
                            delayStart: const Duration(milliseconds: 2000),
                            animationDuration: const Duration(milliseconds: 2000),
                            curve: Curves.fastLinearToSlowEaseIn,
                            direction: Direction.horizontal,
                            offset: 0.5,
                            child: popularContainer(
                                'assets/images/home/newest.png',
                                'Newest',
                                1
                            ),
                          ),
                          ShowUpAnimation(
                            delayStart: const Duration(milliseconds: 2200),
                            animationDuration: const Duration(milliseconds: 2200),
                            curve: Curves.fastLinearToSlowEaseIn,
                            direction: Direction.horizontal,
                            offset: 0.5,
                            child: popularContainer(
                                'assets/images/home/recommended.png',
                                'Recommend',
                                2
                            ),
                          ),
                          

                          /*/// Newest Container
                          ShowUpAnimation(
                            delayStart: const Duration(milliseconds: 2000),
                            animationDuration: const Duration(milliseconds: 2000),
                            curve: Curves.fastLinearToSlowEaseIn,
                            direction: Direction.horizontal,
                            offset: 0.5,
                            child: Container(
                              width: 100,
                              height: 25,
                              decoration: BoxDecoration(
                                color: AppColors.greyContainerColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Row(
                                  children: [

                                    Container(
                                      height: 19,
                                      width: 19,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(60),
                                      ),
                                      child: Image.asset('assets/images/home/newest.png'),
                                    ),
                                    const SizedBox(width:8,),
                                    Text('Newest',style: TextStyle(fontSize: 14,color: AppColors.greyColorText),),

                                  ],
                                ),
                              ),
                            ),
                          ),

                          ///Recommended Container
                          ShowUpAnimation(
                            delayStart: const Duration(milliseconds: 2200),
                            animationDuration: const Duration(milliseconds: 2200),
                            curve: Curves.fastLinearToSlowEaseIn,
                            direction: Direction.horizontal,
                            offset: 0.5,
                            child: Container(
                              width: 100,
                              height: 25,
                              decoration: BoxDecoration(
                                color: AppColors.greyContainerColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Row(
                                  children: [

                                    Container(
                                      height: 19,
                                      width: 19,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(60),
                                      ),
                                      child: Image.asset('assets/images/home/recommended.png'),
                                    ),
                                    const SizedBox(width:8,),
                                    Text('Popular',style: TextStyle(fontSize: 14,color: AppColors.greyColorText),),

                                  ],
                                ),
                              ),
                            ),
                          ),*/

                        ],
                      ),

                      SizedBox (height: 2.h,),

                      /// ListView of Containers
                      Expanded(
                        child: ListView(
                          physics: const BouncingScrollPhysics(),
                          children: [
                            Container(
                              height: 18.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [

                                        GestureDetector(
                                          onTap:(){
                                            Get.to(HomeInside());
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.all(10),
                                            width: 140,
                                            decoration: BoxDecoration(
                                              color: AppColors.containerColor,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Image.asset('assets/images/home/glass.png'),),
                                        ),

                                        Expanded(
                                          flex: 5,
                                          child: Container(
                                            margin: const EdgeInsets.all(10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                const Text(
                                                  'Black Tea',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                const Text(
                                                  'Flavour so strong, it’ll awaken all five of your senses!',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                Row(

                                                  children: [
                                                    Text(
                                                      "19.99",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: AppColors.darkRed,
                                                      ),
                                                    ),

                                                    const SizedBox(width: 10,),
                                                    const Text(
                                                      "24.99",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),

                                                ///Rating bar Row
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    RatingBar.builder(
                                                      initialRating: 2,
                                                      minRating: 1,
                                                      direction: Axis.horizontal,
                                                      allowHalfRating: true,
                                                      itemCount: 5,
                                                      itemSize: 15,
                                                      itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                                                      itemBuilder: (context, _) =>
                                                      const Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                      ),
                                                      onRatingUpdate: (rating) {
                                                        print(rating);
                                                      },
                                                    ),

                                                    const SizedBox(width: 4,),
                                                    const Text(
                                                      '(4.9) Reviews',
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),


                                        Container(
                                          margin: const EdgeInsets.all(10),
                                          child: Column(
                                            children: [
                                              Image.asset('assets/images/home/containerLike.png',height: 16,width: 16,),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Positioned(
                                    bottom: 0,
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: AppColors.customRedColor,
                                        borderRadius: BorderRadius.circular(60),
                                      ),
                                      child: const Icon(Icons.add,color: Colors.white,size: 40,),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 13,),
                            Container(
                              height: 18.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Stack(
                                children: [
                                  GestureDetector(
                                    onTap:(){
                                      Get.to(HomeInside());

                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        children: [

                                          Container(
                                            margin: const EdgeInsets.all(10),
                                            width: 140,
                                            height: 150,
                                            decoration: BoxDecoration(
                                              color: AppColors.containerColor,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Image.asset('assets/images/home/glass.png'),),

                                          Expanded(
                                            flex: 5,
                                            child: Container(
                                              margin: const EdgeInsets.all(10),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  const Text(
                                                    'Black Tea',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                  const Text(
                                                    'Flavour so strong, it’ll awaken all five of your senses!',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                  Row(

                                                    children: [
                                                      Text(
                                                        "19.99",
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: AppColors.darkRed,
                                                        ),
                                                      ),

                                                      const SizedBox(width: 10,),
                                                      const Text(
                                                        "24.99",
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ],
                                                  ),

                                                  ///Rating bar Row
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      RatingBar.builder(
                                                        initialRating: 2,
                                                        minRating: 1,
                                                        direction: Axis.horizontal,
                                                        allowHalfRating: true,
                                                        itemCount: 5,
                                                        itemSize: 15,
                                                        itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                                                        itemBuilder: (context, _) =>
                                                        const Icon(
                                                          Icons.star,
                                                          color: Colors.yellow,
                                                        ),
                                                        onRatingUpdate: (rating) {
                                                          print(rating);
                                                        },
                                                      ),

                                                      const SizedBox(width: 4,),
                                                      const Text(
                                                        '(4.9) Reviews',
                                                        style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 10,
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),


                                          Container(
                                            margin: const EdgeInsets.all(10),
                                            child: Column(
                                              children: [
                                                Image.asset('assets/images/home/containerLike.png',height: 16,width: 16,),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    bottom: 0,
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(60),
                                          border: Border.all(color: Colors.red)
                                      ),
                                      child: const Center(
                                        child: Text(
                                          '1',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(height: 13,),
                            Container(
                              height: 18.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Stack(
                                children: [
                                  GestureDetector(
                                    onTap:(){
                                      Get.to(HomeInside());

                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        children: [

                                          Container(
                                            margin: const EdgeInsets.all(10),
                                            width: 140,
                                            height: 150,
                                            decoration: BoxDecoration(
                                              color: AppColors.containerColor,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Image.asset('assets/images/home/glass.png'),),

                                          Expanded(
                                            flex: 5,
                                            child: Container(
                                              margin: const EdgeInsets.all(10),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  const Text(
                                                    'Black Tea',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                  const Text(
                                                    'Flavour so strong, it’ll awaken all five of your senses!',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                  Row(

                                                    children: [
                                                      Text(
                                                        "19.99",
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: AppColors.darkRed,
                                                        ),
                                                      ),

                                                      const SizedBox(width: 10,),
                                                      const Text(
                                                        "24.99",
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ],
                                                  ),

                                                  ///Rating bar Row
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      RatingBar.builder(
                                                        initialRating: 2,
                                                        minRating: 1,
                                                        direction: Axis.horizontal,
                                                        allowHalfRating: true,
                                                        itemCount: 5,
                                                        itemSize: 15,
                                                        itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                                                        itemBuilder: (context, _) =>
                                                        const Icon(
                                                          Icons.star,
                                                          color: Colors.yellow,
                                                        ),
                                                        onRatingUpdate: (rating) {
                                                          print(rating);
                                                        },
                                                      ),

                                                      const SizedBox(width: 4,),
                                                      const Text(
                                                        '(4.9) Reviews',
                                                        style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 10,
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),


                                          Container(
                                            margin: const EdgeInsets.all(10),
                                            child: Column(
                                              children: [
                                                Image.asset('assets/images/home/containerLike.png',height: 16,width: 16,),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    bottom: 0,
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(60),
                                          border: Border.all(color: Colors.red)
                                      ),
                                      child: const Center(
                                        child: Text(
                                          '1',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
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
              ),
            ),//List}

            /// Grey Container
            Container(
              width: double.infinity,
              height: 32.h,
              color: AppColors.customGrey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///App Bar
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          /// Hamburger Menu and Recent Location DropDown Row
                          Row(
                            children: [
                              /// Drawer Menu
                              InkWell(
                                onTap:(){
                                  _scaffoldKey.currentState!.openDrawer();
                                  },
                                  child: Image.asset('assets/images/home/menu.png')),
                              const SizedBox(width: 12,),
                              ///Recent Location DropDown
                              Container(
                                width: 34.w,
                                height: 4.h,
                                decoration: BoxDecoration(
                                  color: AppColors.customGrey,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: DropdownButton(
                                    underline:Container(),
                                    iconSize: 20,
                                    value: _selectedItem,
                                    onChanged: (value) {
                                      /*setState(() {
                                  *//*_selectedItem = value.toString();*//*
                                });*/
                                    },
                                    isDense: false,
                                    dropdownColor: Colors.white,
                                    iconEnabledColor: Colors.white,

                                    items: [
                                      const DropdownMenuItem(
                                        value: 'Item 1',
                                        child: Text('Recent Location',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14
                                        ),),
                                      ),
                                      /*const DropdownMenuItem(
                                        value: 'Item 2',
                                        child: Text('Smoothies'),
                                      ),*/

                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          /// Search And Bell Icon
                          Row(
                            children: [
                              SizedBox(width: 18.w,),
                              Image.asset('assets/images/home/search.png'),
                              const SizedBox(width: 17,),
                              Image.asset('assets/images/home/bell.png'),

                            ],
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.customGrey1
                            ),
                            child: Center(child: Image.asset('assets/images/home/shopping.png',height: 20,width: 20,)),
                          )


                        ],
                      ),
                    ),

                    const SizedBox(height: 30,),

                    /*/// Find your best tab text
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Find your best tab',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),

                    /// Drop Down
                    Padding(
                      padding: const EdgeInsets.only(left: 12,top: 5),
                      child: Container(
                        width: 28.w,
                        height: 4.h,
                        decoration: BoxDecoration(
                          color: AppColors.customGrey1,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButtonHideUnderline(
                            child: SizedBox(
                              height: 100,
                              child: DropdownButton(
                                iconSize: 20,
                                value: _selectedItem,
                                onChanged: (value) {
                                  *//*setState(() {
                                    *//**//*_selectedItem = value.toString();*//**//*
                                  });*//*
                                },
                                isDense: false,
                                dropdownColor: Colors.white,
                                iconEnabledColor: Colors.white,

                                items: [
                                  MyDropdownMenuItem(
                                    value: 'Item 1',
                                    child: const Text('Coffee',style: TextStyle(color: Colors.white),),
                                    backgroundColor: AppColors.customGrey1,
                                  ),
                                  const DropdownMenuItem(
                                    value: 'Item 2',
                                    child: Text('Smoothies'),
                                  ),
                                  const DropdownMenuItem(
                                    value: 'Item 3',
                                    child: Text('Donut'),
                                  ),
                                  const DropdownMenuItem(
                                    value: 'Item 4',
                                    child: Text('Sandwich'),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),*/


              ],
                ),
              ),
            ),

        Positioned(
          left: 22,
            top: 90,
            right: 22,
            child: ShowUpAnimation(
                delayStart: const Duration(milliseconds: 800),
                animationDuration: const Duration(milliseconds: 800),
                curve: Curves.fastLinearToSlowEaseIn,
                direction: Direction.horizontal,
                offset: 0.5,
                child: Image.asset('assets/images/home/banner.png'))),


          ],
        )
      ),
    );
  }

  Widget orderType(
      String image,
      String containerName,
      ) =>
      Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(120),
              color: AppColors.greyContainerColor,
            ),
            child: Center(child: Image.asset(ImageUtils.getAssetImageLink(img: image),height: 30,)),

          ),
          const SizedBox(height: 5,),

          Text(
            containerName,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      );

  Widget popularContainer(
      String image,
      String text,
      int animIndex,
      )=>
      GetBuilder<HomeController>(builder: (controller){
        return GestureDetector(
          onTap: (){
            controller.toggleSelection(animIndex);
          },
          child: Container(
            width: 110,
            height: 30,
            decoration: BoxDecoration(
              color: controller.isSelected[animIndex] ? AppColors.customRedColor : AppColors.greyContainerColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(
                    height: 19,
                    width: 19,
                    decoration: BoxDecoration(
                        color: controller.isSelected[animIndex] ? AppColors.greyContainerColor: Colors.white,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Image.asset(image,
                      color: controller.isSelected[animIndex] ? AppColors.customRedColor: AppColors.greyColorText,
                    ),
                  ),
                  const SizedBox(width: 8,),
                  Flexible(
                    child: Text(text,style: TextStyle(
                        fontSize: 12,
                        color: controller.isSelected[animIndex] ? Colors.white: AppColors.greyColorText
                    ),),
                  ),

                ],
              ),
            ),
          ),
        );
      });

  Widget foodCategoryText(
      String text,
      int animIndex,
      )=>
      GetBuilder<HomeController>(builder: (controller){
        return ShowUpAnimation(
          delayStart: const Duration(milliseconds: 1000),
          animationDuration: const Duration(milliseconds: 1000),
          curve: Curves.fastLinearToSlowEaseIn,
          direction: Direction.horizontal,
          offset: 0.5,
          child: GestureDetector(
            onTap:(){
              controller.toggleSelection1(animIndex);
            },
            child: Text(text,
              style: TextStyle(
                color: controller.isSelected1[animIndex] ? AppColors.customRedColor: AppColors.greyColorText,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
      });

}



class MyDropdownMenuItem<T> extends DropdownMenuItem<T> {
  final Color? backgroundColor;

  MyDropdownMenuItem({
    required T value,
    required Widget child,
    this.backgroundColor,
  }) : super(value: value, child: child);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: super.build(context),
    );
  }







}








///NOTES
/// Order types
///Pick up , curbside ,Home delivery , Table ordering with icons , scan with QR Code (if this selected , then QR code should open)
///