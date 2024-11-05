import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/app_colors.dart';

class EventType extends StatelessWidget {
  const EventType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.customGrey,
        appBar: AppBar(

          backgroundColor: AppColors.customGrey,
          leading: InkWell(
              onTap: (){
                Get.back();
              },
              child: Icon(Icons.arrow_back),


        ),
      ),
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
                child: Text(
                  'Event Type',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: AppColors.customGrey
                  ),
                ),
              ),

              Divider(
                color: AppColors.customGrey,
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: Get.width,
                  height: 445,
                  decoration: BoxDecoration(
                    color: AppColors.greyContainerColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          width: Get.width,
                          height: 370,
                          decoration: BoxDecoration(
                            color: AppColors.customRedColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Stack(
                            children: [
                              Image.asset('assets/images/wedding.png',fit: BoxFit.fill,),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
    ),);
  }
}
