//Splash Screen
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/login.dart';

class flash_screen extends StatefulWidget {
  const flash_screen({super.key});

  @override
  State<flash_screen> createState() => _flash_screenState();
}

class _flash_screenState extends State<flash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3) ,(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> login()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/monitor.png')
            )
          ),
        ),
      ),

    );
  }
}
