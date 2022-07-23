import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Color(0xff5B73D0),
      ),
      appBar: getAppbar(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 14.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 14.h),
            Text(
              "Welcome Back!",
              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 6.h),
            Text(
              "Benjamin Evalent",
              style: TextStyle(
                  color: Color(0xff999BA4),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 15.h),
            Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 10),
                    blurRadius: 1,
                    color: Colors.grey.withOpacity(0.2),
                  )
                ]),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: outlinedBorder(),
                    focusedBorder: outlinedBorder(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xffC2C2C2),
                    ),
                    hintText: "Search",
                    prefixIcon: Icon(
                      Icons.search_sharp,
                      size: 24.sp,
                      color: Color(0xffC2C2C2),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  OutlineInputBorder outlinedBorder() {
    return OutlineInputBorder(
      gapPadding: 1,
      borderSide: BorderSide(
        color: Color(0xffEAEBEC),
      ),
      borderRadius: BorderRadius.circular(20.r),
    );
  }

  AppBar getAppbar() {
    return AppBar(
      iconTheme: IconThemeData(color: Color(0xff28292C)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        "Home",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
          color: Colors.black,
        ),
      ),
      actions: [
        CircleAvatar(backgroundColor: Color(0xffD0D1D7)),
        SizedBox(width: 12.w),
      ],
    );
  }
}
