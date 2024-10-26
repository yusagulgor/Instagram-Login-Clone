import 'package:flutter/material.dart';

class Signupbutton extends StatefulWidget {
  const Signupbutton({super.key,required this.onTap});
  final VoidCallback onTap;

  @override
  State<Signupbutton> createState() => _SignupbuttonState();
}

class _SignupbuttonState extends State<Signupbutton> {
  @override
  Widget build(BuildContext context) {
    final buttonWidth = MediaQuery.of(context).size.width;
    final buttonHeight = MediaQuery.of(context).size.height;
    var text = "Create new account";
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: buttonWidth*0.93,
        height: buttonHeight *0.050,
        decoration: BoxDecoration(borderRadius:BorderRadius.circular(70),border:Border.all(color: const Color(0xff0162E0),width: 1,)),
        child:Center(child: Text(text,style: const TextStyle(fontWeight: FontWeight.w500,color:Color(0xff0162E0) ),),),
      ),
    );
  }
}