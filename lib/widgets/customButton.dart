import 'package:flutter/material.dart';

class Custombutton extends StatefulWidget {
  const Custombutton({super.key,required this.onTap});
  final VoidCallback onTap;

  @override
  State<Custombutton> createState() => _CustombuttonState();
}

class _CustombuttonState extends State<Custombutton> {
  @override
  Widget build(BuildContext context) {
    final buttonWidth = MediaQuery.of(context).size.width;
    final buttonHeight = MediaQuery.of(context).size.height;
    const label = "Log in";
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: buttonWidth*0.93,
        height: buttonHeight *0.050,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),color: const Color(0xff0162E0)),
        child:const Center(child: Text(label,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),)),
      ),
    );
  }
}