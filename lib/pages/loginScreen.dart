import 'package:flutter/material.dart';
import 'package:instagram/widgets/customButton.dart';
import 'package:instagram/widgets/customTextfield.dart';
import 'package:instagram/widgets/signUpButton.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    var userText = "Username, email or mobile number";
    var passText = "Password";
    var forgotText = "Forgot password?";
    var language = "English (US)";
    return  Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xffEEF7FF),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child:  Text(language,style: const TextStyle(color: Color.fromARGB(255, 88, 88, 88),fontSize: 13),),
          ),
          const Padding(
            padding: EdgeInsets.only(top:90.0),
            child: Image(width:75,height:75,image: AssetImage('assets/instagramlogo.png')),
          ),
          Padding(
            padding:const EdgeInsets.only(top: 100), 
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                Customtextfield(text: userText,isObscure: false,),
                const SizedBox(height: 15),
                Customtextfield(text: passText,isObscure: true,),
                const SizedBox(height: 15,),
                Custombutton(onTap:(){}),
                const SizedBox(height: 15,),
                Text(forgotText,style: TextStyle(fontSize: 14),),
                Padding(
                  padding: const EdgeInsets.only(top: 190),
                  child: Column(
                    children: [
                      Signupbutton(onTap: (){}),
                      Image(color: const Color.fromARGB(255, 78, 78, 78),width: 60,height:60,image:AssetImage('assets/meta.png')),
                    ],
                  ),
                ),
              ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
