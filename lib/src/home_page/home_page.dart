import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/catogoryCard.dart';
import '../../widgets/custom_outlined_border.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List categories = [
      {
        "icondata": "assets/icons/dancing.svg",
        "title": "Dancing",
        "desc": "12 Classes",
      },
      {
        "icondata": "assets/icons/music.svg",
        "title": "Music",
        "desc": "10 Classes",
      },
      {
        "icondata": "assets/icons/galary.svg",
        "title": "Graphics",
        "desc": "8 Classes",
      },
    ];
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
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
                child: TextFormField(
              decoration: InputDecoration(
                fillColor: Color(0xffFFFFFF),
                filled: true,
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
            SizedBox(height: 30.h),
            // categories title
            Text(
              "Category",
              style: TextStyle(
                color: Color(0xff28292C),
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20.h),
            //Catogries list
            SizedBox(
              width: double.maxFinite,
              height: 68.h,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  categories.length,
                  (index) => categoryCart(
                    iconData: categories[index]["icondata"],
                    title: categories[index]["title"],
                    desc: categories[index]["desc"],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
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
