import 'package:flutter/material.dart';
import 'package:fundraiser/utils/app_colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class buttonForConfirmPaymentContainer extends StatelessWidget {
  const buttonForConfirmPaymentContainer({Key? key,required this.button_name,this.ontap}) : super(key: key);

  final String button_name;
  final ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height:30,
        decoration: BoxDecoration(
          color: AppColors.customRedColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            button_name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
