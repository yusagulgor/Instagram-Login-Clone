import 'package:flutter/material.dart';

class Customtextfield extends StatefulWidget {
  const Customtextfield({super.key, required this.text,required this.isObscure});
  final String text;
  final bool isObscure;

  @override
  State<Customtextfield> createState() => _CustomtextfieldState();
}

class _CustomtextfieldState extends State<Customtextfield> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        obscureText: widget.isObscure,
        decoration: InputDecoration(
          filled: true,
          hintText: widget.text,hintStyle: const TextStyle(fontWeight: FontWeight.w500,color:  Color.fromARGB(255, 128, 128, 128)),
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:const BorderSide(color: Color.fromARGB(255, 175, 175, 175), width: 1), // Kenarlık rengi yeşil
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:const BorderSide(color: Colors.blue, width: 3), // Seçildiğinde mavi kenarlık
          ),
        ),
      ),
    );
  }
}
