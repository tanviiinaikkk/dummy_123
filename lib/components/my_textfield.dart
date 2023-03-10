import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget{

  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
      super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      }
      );

  Widget build(BuildContext context){
    return const Padding(

        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: TextField(
          // controller: controller ,
          // obscureText: obscureText,
          decoration: InputDecoration(
            // hintText: 'Find your patient...',
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            fillColor: Colors.white38,
            filled: true,
          ),
        ),
      );

  }
}