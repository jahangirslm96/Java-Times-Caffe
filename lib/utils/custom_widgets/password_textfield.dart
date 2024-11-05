import 'package:flutter/material.dart';

class CustomTextFieldPassword extends StatelessWidget {
  const CustomTextFieldPassword({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    bool _passwordVisible = true;

    return TextFormField(
      obscureText: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: (value) {
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter password';
        }
        if (value.length>200){
          return 'Cannot exceed 200 characters';
        }
        return null;

      },

      style: const TextStyle(
        fontSize: 18,
        color: Colors.black,

      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color(0xF3F3F3),
              width: 0),
          borderRadius: BorderRadius.circular(6.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color(0xF3F3F3),
              width: 1.5),
          borderRadius: BorderRadius.circular(6.0),
        ),
        isDense: true,
        contentPadding: const EdgeInsets.all(18.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        hintText: 'Password',
        hintStyle: TextStyle(color: Colors.grey[500]),
        prefixIcon: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.lock_outline_rounded,size: 20,color: Colors.black,),
        ),
        suffixIcon: Icon(
          _passwordVisible
              ? Icons.visibility
              : Icons.visibility_off,
          size: 20,color: Colors.black,
        ),
      ),
    );
  }
}
