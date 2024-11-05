import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomVerificationTextfield extends StatelessWidget {
  const CustomVerificationTextfield({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15.w,
      child: TextFormField(
        keyboardType: TextInputType.number,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        textAlign: TextAlign.center,
        textInputAction: TextInputAction.next,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          LengthLimitingTextInputFormatter(1),
        ],
        /*onChanged: (value) {
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter email';
                      }
                      if (value.length>200){
                        return 'Cannot exceed 200 characters';
                      }
                      return null;

                    },*/
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,

        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Colors.grey,
                width: 1.5),
            borderRadius: BorderRadius.circular(6.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Colors.grey,
                width: 1.5),
            borderRadius: BorderRadius.circular(6.0),
          ),
          isDense: true,
          contentPadding: const EdgeInsets.all(18.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          hintText:'',
          hintStyle: TextStyle(color: Colors.grey[500]),
        ),
      ),
    );
  }
}
