import 'package:flutter/material.dart';
import 'package:flutter_date_picker_timeline/flutter_date_picker_timeline.dart';
import 'package:flutter_month_picker/flutter_month_picker.dart';
import 'package:fundraiser/controllers/events_screen_controller/event_controller.dart';
import 'package:fundraiser/screens/home/events/store_select_screen.dart';
import 'package:fundraiser/utils/custom_widgets/custom_button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


import '../../../utils/app_colors.dart';
import 'event_details.dart';

class EventsDetails extends StatelessWidget {
   EventsDetails({Key? key}) : super(key: key);

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
                      Image.asset('assets/images/weddinge.jpg',),

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
                                child: const Icon(Icons.arrow_back,color: Colors.white,)),
                          ),
                        ),
                      ),
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
                            child: Image.asset('assets/images/wedding3.png'),

                          ),
                          SizedBox(width: 3.w,),
                          Container(
                            height: 80,
                            width: 80,
                            child: Image.asset('assets/images/wedding3.png'),
                          ),
                          SizedBox(width: 3.w,),
                          Container(
                            height: 80,
                            width: 80,
                            child: Image.asset('assets/images/wedding3.png'),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Wedding',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.customGrey
                                ),
                              ),

                              const SizedBox(height: 15,),

                              Container(
                                width: Get.width,
                                decoration: BoxDecoration(
                                  color: AppColors.lightRed,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Text(
                                        'NOTE:',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.customRedColor
                                        ),
                                      ),

                                      const SizedBox(height: 5,),

                                      Text(
                                        'We offer a coffee cart service that can accommodate up to 1000 people. Make sure to book this service at least one year in advance to secure your date. At Java Break, we are dedicated to making your event unforgettable with our delicious food and top-notch service.',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.customRedColor
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),

                              const SizedBox(height: 35,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text(
                                    'Guest',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.customGrey,
                                    ),

                                  ),

                                  Text(
                                    'minimum 200',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.greyColorText,
                                    ),

                                  ),

                                ],
                              ),

                              const SizedBox(height: 25,),

                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        ///  Decrease Container
                                        InkWell(
                                          onTap:(){
                                            controller.decrease();
                                          },
                                          child: Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: AppColors.customRedColor,
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: const Center(child: Icon(Icons.remove,color: Colors.white,)),
                                          ),
                                        ),
                                        SizedBox(width: 3.5.w,),

                                        GetBuilder<EventController>(builder: (_){
                                          return Container(
                                            width: 70,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey
                                              ),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child:Center(
                                              child: Text(
                                                controller.addSubEvent.toString(),
                                                style: const TextStyle(
                                                    fontSize: 16
                                                ),
                                              ),
                                            ),
                                          );
                                        }),

                                        SizedBox(width: 3.5.w,),
                                        InkWell(
                                          onTap: (){
                                            controller.increase();
                                          },
                                          child: Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: AppColors.customRedColor,
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: const Center(child: Icon(Icons.add,color: Colors.white,)),
                                          ),
                                        ),
                                      ],
                                    ),




                                  ],
                                ),
                              ),





                            ],
                          ),
                        ),

                        Divider(
                          color: AppColors.verificationScreenContainerColor,
                        ),

                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text(
                                    'Date',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.customGrey,
                                    ),

                                  ),

                                  InkWell(
                                    onTap: (){
                                      final selectedDate = showMonthPicker(

                                        context: context,
                                        initialDate: DateTime.now(), // Today's date
                                        firstDate: DateTime(2000, 5), // Stating date : May 2000
                                        lastDate: DateTime(2050), // Ending date: Dec 2050
                                      );

                                    },
                                    child: Container(
                                      height: 33,
                                      width: 125,
                                      decoration: BoxDecoration(
                                        border : Border(
                                          top: BorderSide(color: AppColors.customGrey),
                                          bottom: BorderSide(color: AppColors.customGrey),
                                          left: BorderSide(color: AppColors.customGrey),
                                          right: BorderSide(color: AppColors.customGrey),
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            'Mar 2024',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: AppColors.customGrey
                                            ),
                                          ),

                                          const Icon(Icons.keyboard_arrow_down_outlined,size: 25,)
                                        ],
                                      ),
                                    ),
                                  ),

                                 /* Center(
                                    child: TextButton(
                                      onPressed: () {
                                        final selectedDate = showMonthPicker(

                                          context: context,
                                          initialDate: DateTime.now(), // Today's date
                                          firstDate: DateTime(2000, 5), // Stating date : May 2000
                                          lastDate: DateTime(2050), // Ending date: Dec 2050
                                        );
                                      },
                                      child: const Text('Open Flutter Month Picker'),
                                    ),
                                  ),*/



                                ],
                              ),
                              const SizedBox(height: 20,),

                              FlutterDatePickerTimeline(
                                startDate: DateTime(2023, 01, 01),
                                endDate: DateTime(2023, 12, 30),
                                initialSelectedDate: DateTime(2023, 07, 24), onSelectedDateChange: (DateTime? date) {  },
                                /*onSelectedDateChange: (DateTime dateTime) {
                                  print(dateTime);
                                },*/
                              ),

                            ],
                          ),
                        ),

                        Divider(
                          color: AppColors.verificationScreenContainerColor,
                        ),

                        ///Time
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text(
                                    'Time',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.customGrey,
                                    ),

                                  ),

                                  Text(
                                    'From - To',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.greyColorText,
                                    ),

                                  ),

                                ],
                              ),

                              const SizedBox(height: 26,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  timeContainer('12:00'),
                                  timeContainer('13:00'),
                                  timeContainer('14:00'),
                                  timeContainer('15:00'),
                                ],
                              ),
                              const SizedBox(height: 12,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  timeContainer('16:00'),
                                  Container(
                                    width: 75,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColors.customRedColor

                                    ),
                                    child: const Center(
                                      child: Text(
                                        '17:00',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white
                                        ),
                                      ),

                                    ),
                                  ),
                                  Container(
                                    width: 75,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColors.lightRed

                                    ),
                                    child: Center(
                                      child: Text(
                                        '18:00',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.customRedColor
                                        ),
                                      ),

                                    ),
                                  ),
                                  Container(
                                    width: 75,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColors.lightRed

                                    ),
                                    child: Center(
                                      child: Text(
                                        '19:00',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.customRedColor
                                        ),
                                      ),

                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 75,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColors.customRedColor

                                    ),
                                    child: const Center(
                                      child: Text(
                                        '20:00',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white
                                        ),
                                      ),

                                    ),
                                  ),
                                  timeContainer('21:00'),
                                  timeContainer('22:00'),
                                  timeContainer('23:00'),
                                ],
                              ),
                              const SizedBox(height: 12,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 8,),
                                  timeContainer('24:00'),

                                ],
                              ),

                              const SizedBox(height: 25,),

                              CustomButton(button_name: 'Book Now',
                              ontap: (){
                                {
                                  showModalBottomSheet(context: context,
                                      shape : const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30.0),
                                          topRight: Radius.circular(30.0),
                                        ),
                                      ),
                                      builder: (BuildContext context){
                                        return Container(
                                          height:170,
                                          width: Get.width,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Are your sure?',
                                                  style: TextStyle(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.customGrey
                                                  ),
                                                ),

                                                const SizedBox(height: 33,),

                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                  children: [

                                                    Container(
                                                      width: 166,
                                                      height: 62,
                                                      decoration: BoxDecoration(
                                                        color: AppColors.customGrey,
                                                        borderRadius: BorderRadius.circular(15),
                                                      ),
                                                      child: const Center(
                                                        child: Text(
                                                          'Cancel',
                                                          style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.w500,
                                                            color: Colors.white
                                                          ),
                                                        ),
                                                      ),
                                                    ),

                                                    Container(
                                                      width: 40.w,
                                                      height: 62,
                                                      decoration: BoxDecoration(
                                                        color: AppColors.customRedColor,
                                                        borderRadius: BorderRadius.circular(15),
                                                      ),
                                                      child: const Center(
                                                        child: Text(
                                                          'Confirm',
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight: FontWeight.w500,
                                                              color: Colors.white
                                                          ),
                                                        ),
                                                      ),
                                                    ),

                                                  ],
                                                ),
                                              ],

                                            ),
                                          ),
                                        );
                                      });

                                }
                              },
                              ),



                            ],
                          ),
                        ),



                      ],
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

  Widget timeContainer(
      String containTime,
      ) =>
      Container(
        width: 75,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.confirmPaymentContainer

        ),
        child: Center(
          child: Text(
            containTime,
          style: TextStyle(
            fontSize: 16,
          fontWeight: FontWeight.w500,
            color: AppColors.customGrey
          ),
          ),

        ),
      );

}
