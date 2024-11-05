import 'package:flutter/material.dart';

import '../app_colors.dart';

class CustomTextFieldWithoutIcon extends StatelessWidget {

  const CustomTextFieldWithoutIcon({Key? key,required this.hint_text,}) : super(key: key);

  final String hint_text;



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: (value) {
      },
      /*validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter email';
        }
        if (value.length>200){
          return 'Cannot exceed 200 characters';
        }
        return null;

      },*/

      style: const TextStyle(
        fontSize: 14,
        color: Colors.black,

      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: AppColors.viewCartSubTotalContainerColor,
              width: 0),
          borderRadius: BorderRadius.circular(6.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: AppColors.viewCartSubTotalContainerColor,
              width: 1.5),
          borderRadius: BorderRadius.circular(6.0),
        ),
        isDense: true,
        contentPadding: const EdgeInsets.all(5.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        hintText: hint_text,
        hintStyle: TextStyle(color: Colors.grey[500],fontSize: 12),

      ),
    );
  }
}
