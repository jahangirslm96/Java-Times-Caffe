import 'package:flutter/material.dart';
import 'package:flutter_date_picker_timeline/flutter_date_picker_timeline.dart';
import 'package:flutter_month_picker/flutter_month_picker.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fundraiser/controllers/events_screen_controller/event_controller.dart';
import 'package:fundraiser/screens/home/events/events_details_screen.dart';
import 'package:fundraiser/utils/custom_widgets/custom_button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


import '../../../utils/app_colors.dart';
import 'event_details.dart';

class StoreSelect extends StatelessWidget {
  StoreSelect({Key? key}) : super(key: key);

  EventController controller = Get.put(EventController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: Get.height * 1.35,
            width: Get.width,
            child: Stack(
              children: [

                Container(
                  width: Get.width,
                  child: Stack(
                    children: [
                      Image.asset('assets/images/storeselect.jpg',),

                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Opacity(
                          opacity: 0.6,
                          child: GestureDetector(
                            onTap: (){
                              Get.back();
                            },
                            child: Container(
                              height: 37,
                                width: 37,
                                decoration: BoxDecoration(
                                  color: AppColors.storeselectGrey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(Icons.arrow_back,color: Colors.white,)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 200,
                  child: Container(
                    width: Get.width,
                    height: 200,
                    decoration: BoxDecoration(
                      color: AppColors.customGrey,
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                            ),
                            child: Image.asset('assets/images/jtcstore.png'),

                          ),
                          SizedBox(width: 3.w,),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                            ),
                            child: Image.asset('assets/images/jtcstore.png'),

                          ),
                          SizedBox(width: 3.w,),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                            ),
                            child: Image.asset('assets/images/jtcstore.png'),

                          ),
                          SizedBox(width: 3.w,),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                            ),
                            child: Image.asset('assets/images/jtcstore.png'),

                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 300,
                  child: Container(
                    width: Get.width,
                    height: Get.height,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Text(
                                'Java Times Caffe',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: AppColors.customGrey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              Text(
                                '1.1 km - 2 mins',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.customGrey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                            ],
                          ),

                          SizedBox(height: 9,),

                          Row(
                            children: [
                              Image.asset('assets/images/locationblack.png'),

                              SizedBox(width: 11,),

                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    'Avenida Matamoros # 415 First of Cobián Center, Torreon 27000 Mexico',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.eventTypeGreyFont
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 9,),

                          Row(
                            children: [
                              Image.asset('assets/images/callblack.png'),

                              SizedBox(width: 11,),

                              Expanded(
                                child: Text(
                                  '+52 000 000 000',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.eventTypeGreyFont
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 15,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RatingBar.builder(
                                initialRating: 2,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 20,
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
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 23,),

                          Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: AppColors.customGrey
                            ),

                          ),

                          SizedBox(height: 4,),

                          Text(
                            'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',
                            style: TextStyle(
                                fontSize:16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.eventTypeGreyFont
                            ),

                          ),

                          SizedBox(height: 23,),

                          Text(
                            'Event Type',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: AppColors.customGrey
                            ),

                          ),

                          SizedBox(height: 12,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              eventTypeContainer(
                                'Friends Party',
                                  'assets/images/friends.png',

                              ),

                              GestureDetector(
                                onTap: (){
                                  Get.to(EventsDetails());
                                },
                                child: eventTypeContainer(
                                  'Wedding',
                                  'assets/images/ring.png',

                                ),
                              ),

                              eventTypeContainer(
                                'Birthday Party',
                                'assets/images/birthday.png',

                              ),
                            ],
                          ),
                          SizedBox(height: 23,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              eventTypeContainer(
                                'Anniversary Date',
                                'assets/images/anniversary.png',

                              ),

                              eventTypeContainer(
                                'Cor-operate Event',
                                'assets/images/corporate.png',

                              ),

                              Container(
                                width: 96,
                                height: 96,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                  ],
                                ),

                              )

                            ],
                          ),




                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );

  }


  Widget eventTypeContainer(
      String text,
      String image,
      ) =>
      Container(
        width: 96,
        height: 96,
        decoration: BoxDecoration(
          color: AppColors.customGrey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Image.asset(image),
            SizedBox(height: 8,),
            Flexible(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
                ),
              ),
            ),

          ],
        ),

      );


}
