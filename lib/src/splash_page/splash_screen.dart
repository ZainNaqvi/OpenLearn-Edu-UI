import 'package:app_example_openlearn_app/src/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../routes.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController _controller;


  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..forward();
    animation = CurvedAnimation(parent: _controller, curve: Curves.linear);
    Future.delayed(
      Duration(seconds: 3),
      () => Get.to(MainPage()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ScaleTransition(
          scale: animation,
          child: Center(
            child: Image.asset(
              "assets/images/splash_1.jpg",
              width: double.maxFinite,
              height: 250.h,
            ),
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          "Ilm e duniya",
          style: TextStyle(
            fontSize: 38.sp,
            fontWeight: FontWeight.w500,
            fontFamily: "cursive",
            color: Colors.brown,
          ),
        ),
      ]),
    );
  }
}
