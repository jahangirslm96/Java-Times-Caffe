import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  const CustomTextField({Key? key,required this.hint_text, required this.icon,}) : super(key: key);

  final String hint_text;

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: (value) {
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter email';
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
        hintText: hint_text,
        hintStyle: TextStyle(color: Colors.grey[500]),
        prefixIcon:Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(icon,size: 20,color: Colors.black,),
        ),
      ),
    );
  }
}
