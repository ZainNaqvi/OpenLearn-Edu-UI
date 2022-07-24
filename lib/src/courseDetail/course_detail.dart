import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CourseDetail extends StatelessWidget {
  final String title;
  final String price;
  final String tag;
  final String type;
  CourseDetail({
    Key? key,
    required this.price,
    required this.tag,
    required this.title,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  child: Container(
                    child: CourseCard(
                      tag: tag,
                      members: "432 Participants",
                      price: price,
                      star: "4.8 Reviews",
                      title: title,
                      type: type,
                    ),
                  ),
                ),
              ),

              //Container info
              Container(
                margin: EdgeInsets.only(top: 24.h, bottom: 18.h),
                padding: EdgeInsets.only(
                  left: 14.w,
                  top: 14.h,
                  right: 14.w,
                ),
                width: 386.w,
                height: 94.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    10.r,
                  ),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xff999BA4),
                    radius: 44,
                  ),
                  title: Text(
                    'Ingredia Nutrisha',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: Color(0xff28292C),
                    ),
                  ),
                  subtitle: Text(
                    "Finance Teacher",
                    style: TextStyle(
                      color: Color(0xff999BA4),
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                    ),
                  ),
                  trailing: Icon(
                    Icons.more_vert,
                  ),
                ),
              ),

              Text(
                "Definition",
                style: TextStyle(
                  color: Color(0xff28292C),
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 14.h),
              Container(
                padding: EdgeInsets.all(14.r),
                width: 360.w,
                height: 88.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14.r),
                ),
                child: Center(
                  child: Text(
                    "Proin lobortis porttitor leo sed mattis. Aliq vulputate convallis mauris, at dictum elit feugiat. Praesent in nulla porttitor, lobortis.",
                    style: TextStyle(
                      color: Color(0xff999BA4),
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 14.h, right: 14.w),
                width: 360.w,
                height: 50.h,
                decoration: BoxDecoration(
                  color: Color(0xffD0D1D7).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(14.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          width: 140.w,
                          height: 38.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text(
                              "Material",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff5B73D0),
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Reviews (453)",
                      style: TextStyle(
                        color: Color(0xff999BA4),
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(14.r),
                margin: EdgeInsets.only(top: 14.h, right: 14.w),
                width: 360.w,
                height: 50.h,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(14.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/icons/audio_player.svg"),
                        Text(
                          "01. Introduction",
                          style: TextStyle(
                            color: Color(0xff999BA4),
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "3.32 Minutes",
                      style: TextStyle(
                        color: Color(0xff28292C),
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
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
          right: 32.w,
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
      "Course Details",
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
