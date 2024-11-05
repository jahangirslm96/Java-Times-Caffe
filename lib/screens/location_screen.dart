import 'package:flutter/material.dart';
import 'package:fundraiser/utils/anim/show_up_anim.dart';
import 'package:like_button/like_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:show_up_animation/show_up_animation.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [

              const SizedBox(height: 18,),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Skip',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20.h,),

              ///Like Button
              /*LikeButton(
                size: 300,
                circleColor:
                CircleColor(start: Colors.grey, end: Colors.red),
                bubblesColor: BubblesColor(
                  dotPrimaryColor: Colors.red,
                  dotSecondaryColor: Colors.red,
                ),
                likeBuilder: (bool isLiked) {
                  return Container(
                    height: 300,
                    child: Image.asset('assets/images/Frame.png'),
                  );
                },
              ),*/
              ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 1000),
                  animationDuration: const Duration(milliseconds: 1000),
                  curve: Curves.fastOutSlowIn,
                  direction: Direction.horizontal,
                  offset: 0.5,
                  child: Image.asset('assets/images/Frame.png')),

              SizedBox(height: 3.5.h,),

              const ShowUpAni(
                duration: Duration(milliseconds: 1200),
                direction: Direction.vertical,
                child_widget: Text(
                  'Explore more stores based',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),

              const SizedBox(height: 3,),
              const ShowUpAni(
                duration: Duration(milliseconds: 1200),
                direction: Direction.vertical,
                child_widget: Text(
                  'on your current location',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
              SizedBox(height: 11.h,),
            ///Button
            ShowUpAni(
              duration: const Duration(milliseconds: 1200),
              direction: Direction.vertical,
              child_widget: GestureDetector(
              onTap: (){
                /*Get.to(navName);*/
              },
              child: Container(
                width: 223,
                height:50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Use Current Location',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ),
            ),

              const SizedBox(height: 18,),

              const ShowUpAni(
                duration: Duration(milliseconds: 1200),
                direction: Direction.vertical,
                child_widget: Text(
                  'Enter Manually',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),





            ],
          ),
        ),
      ),
    );
  }
}
