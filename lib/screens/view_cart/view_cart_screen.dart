import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:fundraiser/controllers/home_controller/home_controller.dart';
import 'package:fundraiser/screens/confirmPayment.dart';
import 'package:fundraiser/screens/home/home.dart';
import 'package:fundraiser/utils/app_colors.dart';
import 'package:fundraiser/utils/custom_widgets/custom_button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:status_stepper/status_stepper.dart';

class ViewCart extends StatelessWidget {
  ViewCart({Key? key}) : super(key: key);


  final statuses = List.generate(
    3,
        (index) => SizedBox.square(
      dimension: 32,
      child: Center(child: Text(
        '${index+1}',
        style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500),)),
    ),
  );


  HomeController controller = Get.put(HomeController());

  int curIndex = 1;
  int lastIndex = -1;

  List<StepperData> stepperData = [
    StepperData(
      title: StepperText('USA'),
      subtitle: StepperText('Hello'),
    ),
    StepperData(
      title: StepperText('UK'),
      subtitle: StepperText('Hello'),
    ),
    StepperData(
      title: StepperText('USA'),
      subtitle: StepperText('Hello'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [

              /// Cross and Cart Text
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap:(){
                        Get.off(HomeScreen());
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


              /*AnotherStepper(
                stepperList: stepperData,
                stepperDirection: Axis.horizontal,
                iconWidth: 40,
                iconHeight: 40,
                activeBarColor: Colors.red,
                inActiveBarColor: Colors.grey,
                barThickness: 5,

              ),*/

              /// Stepper
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
              /// 123 Container
              /*Stack(
                children:[
                  Container(
                    width: double.infinity,
                    height: 27,
                    color: AppColors.viewCartContainer,
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
                        color: AppColors.greyColorText,
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

                  Positioned(
                    left: 56,
                    top: 0,
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

              /*Container(
                // autogroupqdhrMqy (QxNvjRyLyi8MtkfA2TqdHR)
                margin:  EdgeInsets.fromLTRB(5, 5, 5, 5),
                width:  double.infinity,
                height:  5,
                child:
                Stack(
                  children:  [
                    Positioned(
                      // rectangle127Hjd (598:2077)
                      left:  5,
                      top:  15,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  395,
                          height:  5,
                          child:
                          Container(
                            decoration:  BoxDecoration (
                              color:  Color(0xffe2e2e2),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // group1375cG7 (598:2078)
                      left:  45,
                      top:  5,
                      child:
                      Container(
                        width:  35,
                        height:  5,
                        child:
                        Column(
                          crossAxisAlignment:  CrossAxisAlignment.center,
                          children:  [
                            Container(
                              // group1371KwD (598:2080)
                              margin:  EdgeInsets.fromLTRB(5, 5, 5, 5),
                              width:  double.infinity,
                              height:  5,
                              decoration:  BoxDecoration (
                                color:  Color(0xffe0201c),
                                borderRadius:  BorderRadius.circular(13.5),
                              ),
                              child:
                              Center(
                                child:
                                Text(
                                  '1',
                                  style:  TextStyle (
                                    'Poppins',
                                    fontSize:  5,
                                    fontWeight:  FontWeight.w500,
                                    height:  5,
                                    color:  Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              // menuQhm (598:2079)
                              'Menu',
                              style:  TextStyle (
                                'Poppins',
                                fontSize:  12*ffem,
                                fontWeight:  FontWeight.w500,
                                height:  5,
                                color:  Color(0xff3d3d3d),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // group1374m2X (598:2083)
                      left:  175,
                      top:  5,
                      child:
                      Container(
                        width:  5,
                        height:  5,
                        child:
                        Column(
                          crossAxisAlignment:  CrossAxisAlignment.center,
                          children:  [
                            Container(
                              // group1372Gzs (598:2085)
                              width:  double.infinity,
                              height:  5,
                              decoration:  BoxDecoration (
                                color:  Color(0xffe0201c),
                                borderRadius:  BorderRadius.circular(13.5),
                              ),
                              child:
                              Center(
                                child:
                                Text(
                                  '2',
                                  style:  TextStyle (
                                    'Poppins',
                                    fontSize:  5,
                                    fontWeight:  FontWeight.w500,
                                    height:  5,
                                    color:  Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              // cartAKZ (598:2084)
                              'Cart',
                              style:  TextStyle (
                                'Poppins',
                                fontSize:  12*ffem,
                                fontWeight:  FontWeight.w500,
                                height:  5,
                                color:  Color(0xff3d3d3d),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // group1376Vsd (598:2088)
                      left:  5,
                      top:  5,
                      child:
                      Container(
                        width:  65,
                        height:  5,
                        child:
                        Column(
                          crossAxisAlignment:  CrossAxisAlignment.center,
                          children:  [
                            Container(
                              // group13732sZ (598:2090)
                              margin:  EdgeInsets.fromLTRB(17*fem, 5, 5, 5),
                              width:  double.infinity,
                              height:  5,
                              decoration:  BoxDecoration (
                                color:  Color(0xffd9d9d9),
                                borderRadius:  BorderRadius.circular(13.5),
                              ),
                              child:
                              Center(
                                child:
                                Text(
                                  '3',
                                  style:  TextStyle (
                                    'Poppins',
                                    fontSize:  5,
                                    fontWeight:  FontWeight.w500,
                                    height:  5,
                                    color:  Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              // checkout6sR (598:2089)
                              'Check out',
                              style:  TextStyle (
                                'Poppins',
                                fontSize:  12,
                                fontWeight:  FontWeight.w500,
                                height:  5,
                                color:  Color(0xffd9d9d9),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),*/

              const SizedBox(height: 2,),
              /*Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Menu',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
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
              ),*/

              const SizedBox(height: 20,),

              ShowUpAnimation(
                delayStart: const Duration(milliseconds: 800),
                animationDuration: const Duration(milliseconds: 800),
                curve: Curves.fastLinearToSlowEaseIn,
                direction: Direction.horizontal,
                offset: 0.5,
                child: viewCartContainer(
                  'assets/images/cappucino.png',
                  'Cappuccino',
                  '\$19.99',
                ),
              ),
              ShowUpAnimation(
                delayStart: const Duration(milliseconds: 1000),
                animationDuration: const Duration(milliseconds: 1000),
                curve: Curves.fastLinearToSlowEaseIn,
                direction: Direction.horizontal,
                offset: 0.5,
                child: viewCartContainer(
                  'assets/images/pome.png',
                  'Pomegranate',
                  '\$19.99',
                ),
              ),
              ShowUpAnimation(
                delayStart: const Duration(milliseconds: 1200),
                animationDuration: const Duration(milliseconds: 1200),
                curve: Curves.fastLinearToSlowEaseIn,
                direction: Direction.horizontal,
                offset: 0.5,
                child: viewCartContainer(
                  'assets/images/sandwich.png',
                  'Pomegranate',
                  '\$19.99',
                ),
              ),

              const SizedBox(height: 85,),


              ShowUpAnimation(
                delayStart: const Duration(milliseconds: 1400),
                animationDuration: const Duration(milliseconds: 1400),
                curve: Curves.fastLinearToSlowEaseIn,
                direction: Direction.vertical,
                offset: 0.5,
                child: Container(
                  height: 128,
                  width: 325,
                  decoration: BoxDecoration(
                    color: AppColors.viewCartSubTotalContainerColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sub Total:',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.viewCartScreenTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Discount',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.viewCartScreenTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Total Sales Tax:',
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            const Text(
                              '\$60.00',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(
                              '\$20',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(
                              '\$5.25',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Divider(
                thickness: 1,
                color: AppColors.viewCartContainerUnderline,
              ),

              Container(
                width: 325,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Total',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      const Text(
                        '\$40.25',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30,),

              ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 1600),
                  animationDuration: const Duration(milliseconds: 1600),
                  curve: Curves.fastLinearToSlowEaseIn,
                  direction: Direction.horizontal,
                  offset: 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomButton(button_name: 'Confirm Payment and address',ontap: (){
                    Get.to(const ConfirmPayment(),transition: Transition.fade,duration: const Duration(seconds: 1));
                  },),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

  Widget viewCartContainer(
      String image,
      String foodName,
      String foodPrice,
      )=>
      Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(

          border: Border(
            bottom: BorderSide(width: 2.0, color: AppColors.viewCartContainerUnderline),
          ),
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            ///Image container
            Container(
              height: 65,
              width: 65,
              child: Image.asset(image),

            ),

            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foodName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(height: 5,),
                  Text(
                    foodPrice,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.customRedColor,
                    ),
                  ),

                ],
              ),
            ),

            const SizedBox(width: 10,),


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
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            color: AppColors.customRedColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(child: Icon(Icons.remove,color: Colors.white,size: 10,)),
                        ),
                      ),
                      const SizedBox(width: 5,),

                      GetBuilder<HomeController>(builder: (_){
                        return Container(
                          width: 40,
                          height: 15,
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
                                  fontSize: 12
                              ),
                            ),
                          ),
                        );
                      }),

                      const SizedBox(width: 5,),
                      InkWell(
                        onTap: (){
                          controller.increase();
                        },
                        child: Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            color: AppColors.customRedColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(child: Icon(Icons.add,color: Colors.white,size: 10,)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30,),




                ],
              ),
            ),







          ],
        ),
      );

}
