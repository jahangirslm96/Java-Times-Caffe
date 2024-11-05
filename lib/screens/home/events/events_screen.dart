import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fundraiser/screens/home/events/events_details_screen.dart';
import 'package:fundraiser/screens/home/events/store_select_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/app_colors.dart';
import '../../auth/login.dart';


class EventsScreen extends StatelessWidget {
   EventsScreen({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String _selectedItem = 'Item 1';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        appBar: AppBar(


          backgroundColor: AppColors.customGrey,
          title: Container(
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
                    child: Text('Your Nearby',style: TextStyle(
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
          leading: InkWell(
            onTap: (){
              _scaffoldKey.currentState!.openDrawer();
            },
              child: Image.asset('assets/images/home/menu.png')),
          actions: [


            Row(
              children: [
                SizedBox(width: 18.w,),
                Image.asset('assets/images/home/search.png'),
                const SizedBox(width: 17,),
                Image.asset('assets/images/home/bell.png'),

              ],
            ),
            SizedBox(width: 4.w,),

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Image.asset('assets/images/home/shopping.png',height: 20,width: 20,),
            )

          ],

        ),
        backgroundColor: AppColors.customGrey,
        body: Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
            color: AppColors.backgroundHome,
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),topRight:Radius.circular(30) )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Total Java Times Caffe',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: AppColors.customGrey
                          ),
                        ),

                        const SizedBox(width: 8,),

                        Text(
                          '10',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: AppColors.customRedColor,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10,),

                    Text(
                      'Your current location',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.customGrey
                      ),
                    ),

                    const SizedBox(height: 8,),

                    ///Search Bar.

                    Container(
                      width: Get.width,
                      height: 45,
                      decoration: BoxDecoration(
                        color: AppColors.searchBarColorEvents,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Image.asset('assets/images/location.png'),

                            const SizedBox(width: 20,),

                            Text(
                              'Avenida Matamoros # 415 First of',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.customGrey1
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Divider(
                color: AppColors.verificationScreenContainerColor,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      eventContainer(),
                      eventContainer(),
                      eventContainer(),
                      eventContainer(),


                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );

  }

  Widget eventContainer() =>
      Container(
        margin: const EdgeInsets.all(8),
        width: Get.width,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(

            children: [

              InkWell(
                  onTap: (){
                    Get.to(StoreSelect());
                  },
                  child: Image.asset('assets/images/jtcstore.png')),

              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){
                          Get.to(StoreSelect());
                        },
                        child: const Text(
                          'Java Times Caffe',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Text(
                        'Avenida Matamoros # 415 First of Cobián Center, Torreon 27000 Mexico',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        "1.1 km - 2 mins",
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.greyColorText,
                        ),
                      ),
                      /*Row(

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
                      ),*/

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
            ],
          ),
        ),
      );

}
