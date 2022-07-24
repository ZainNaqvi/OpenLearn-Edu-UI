import 'package:app_example_openlearn_app/widgets/bullets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Profile extends StatelessWidget {
  Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List list = [
      "Eastern Dance Champion",
      "Florida Dance Champion",
      "Alabama Dance Champion",
      "Paris Dance Champion",
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
              //Container info
              Container(
                width: 386.w,
                margin: EdgeInsets.only(top: 4.h, bottom: 12.h),
                padding: EdgeInsets.only(
                  left: 0.w,
                  top: 0.h,
                  right: 0.w,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    10.r,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 14.w, top: 14.h, bottom: 14.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xffD0D1D7),
                        radius: 50.r,
                      ),
                      SizedBox(width: 16.w),
                      Expanded(
                          child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Valentino Morose",
                              style: TextStyle(
                                color: Color(0xff28292C),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Dance Teacher",
                                  style: TextStyle(
                                    color: Color(0xff999BA4),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.more_vert),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Text(
                                  "Dance Teacher",
                                  style: TextStyle(
                                    color: Color(0xff999BA4),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                    ],
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
                    "Dance teacher lobortis porttitor leo sed mattis. Aliq vulputate convallis mauris, at dictum elit feugiat. Praesent in nulla porttitor.",
                    style: TextStyle(
                      color: Color(0xff999BA4),
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 14.h,
                ),
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
                              "Experience",
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
                    Row(
                      children: [
                        Text(
                          "Reviews (453)",
                          style: TextStyle(
                            color: Color(0xff999BA4),
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(width: 8.w),
                      ],
                    ),
                  ],
                ),
              ),

//
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(0),
                    height: 198.h,
                    margin: EdgeInsets.only(top: 14.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        list.length,
                        (index) => Container(
                          margin: EdgeInsets.only(
                              left: 12.w, right: 12.w, top: 28.h, bottom: 0),
                          child: Row(
                            children: [
                              MyBullet(),
                              SizedBox(width: 12.w),
                              Text(list[index]),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          top: -170.h,
                          left: 20.w,
                          child: SvgPicture.asset("assets/icons/lines.svg"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
//

              Container(
                padding: EdgeInsets.all(14.r),
                margin: EdgeInsets.only(top: 24.h, right: 14.w),
                width: 360.w,
                height: 50.h,
                decoration: BoxDecoration(
                  color: Color(0xff5B73D0),
                  borderRadius: BorderRadius.circular(14.r),
                ),
                child: Center(
                    child: Text(
                  "Leave a review",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
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
      "Detail Mentor",
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
