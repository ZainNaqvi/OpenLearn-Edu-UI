import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../widgets/catogoryCard.dart';
import '../../widgets/custom_outlined_border.dart';

class FavoriteCoursePage extends StatelessWidget {
  const FavoriteCoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List favorite = [
      {
        "type": "Design",
        "title": "Illustration Drawing Education",
        "price": "250.00",
        "star": "5.0 Reviews",
        "members": "235 Participants",
        "tag": "Experienced",
      },
      {
        "type": "Design",
        "title": "Mobile Design Education",
        "price": "100.00",
        "star": "4.8 Reviews",
        "members": "432 Participants",
        "tag": "Novice",
      },
      {
        "type": "Design",
        "title": "Mobile Design Education",
        "price": "100.00",
        "star": "4.8 Reviews",
        "members": "432 Participants",
        "tag": "Unknown",
      },
    ];
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: getAppbar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.maxFinite,
                child: MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: Column(
                    children: List.generate(
                      favorite.length,
                      (index) => CourseCard(
                        tag: favorite[index]['tag'],
                        members: favorite[index]['members'],
                        price: favorite[index]['price'],
                        star: favorite[index]['star'],
                        title: favorite[index]['title'],
                        type: favorite[index]['type'],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

//favorite couse card
  Widget CourseCard({
    required String type,
    required String title,
    required String price,
    required String star,
    required String members,
    required String tag,
  }) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 14.h),
          padding: EdgeInsets.only(top: 14.h, left: 14.w, right: 14.w),
          width: 320.w,
          height: 290.h,
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 310.w,
                height: 186.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.r),
                  color: Color(0xffD0D1D7),
                ),
              ),
              SizedBox(height: 9.h),
              Text(
                type,
                style: TextStyle(
                  color: Color(0xff999BA4),
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
              ),

              SizedBox(height: 8.h),
              //detail
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Color(0xff28292C),
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                    ),
                  ),
                  Text(
                    "\$$price",
                    style: TextStyle(
                      color: Color(0xff5B73D0),
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
              //stars
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  bottomCard(
                    iconData: Icons.star,
                    text: "$star",
                    iconColor: Colors.yellow,
                  ),
                  bottomCard(
                    iconData: Icons.person_outline,
                    text: "$members",
                    iconColor: Color(0xffFF9008),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
            bottom: 120.h,
            right: 42.w,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              height: 24.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                color: Color(0xffFF9008),
              ),
              child: Center(
                child: Text(
                  "$tag",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            )),
      ],
    );
  }

  Widget bottomCard({
    required IconData iconData,
    required Color iconColor,
    required String text,
  }) {
    return Row(
      children: [
        Icon(
          iconData,
          color: iconColor,
        ),
        SizedBox(width: 8.w),
        Text(
          text,
          style: TextStyle(
            color: Color(0xffC2C2C2),
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
          ),
        )
      ],
    );
  }

  AppBar getAppbar() {
    return AppBar(
      leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios)),
      iconTheme: IconThemeData(color: Color(0xff28292C)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        "Favorite Course",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
          color: Colors.black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_vert,
            color: Color(0xff28292C),
          ),
        ),
        SizedBox(width: 12.w),
      ],
    );
  }
}
