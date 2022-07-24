import 'package:app_example_openlearn_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

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
      body: SingleChildScrollView(
        child: Container(
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
              SizedBox(height: 18.h),
              // categories title
              Text(
                "Category",
                style: TextStyle(
                  color: Color(0xff28292C),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 12.h),
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
              // favourite course card
              SizedBox(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Favorite Course",
                    style: TextStyle(
                      color: Color(0xff28292C),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.favorite);
                        },
                        child: Text(
                          "See All",
                          style: TextStyle(
                            color: Color(0xff28292C),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 14.w,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              // bottom card
              SizedBox(
                height: 244.h,
                child: MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      CourseCard(),
                      CourseCard(),
                    ],
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
  Container CourseCard() {
    return Container(
      margin: EdgeInsets.only(right: 14.w),
      padding: EdgeInsets.only(top: 8.h, left: 14.w, right: 14.w),
      width: 260.w,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 296.w,
            height: 150.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r),
              color: Color(0xffD0D1D7),
            ),
          ),
          SizedBox(height: 9.h),
          Text(
            "Design",
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
                "Web Design Education",
                style: TextStyle(
                  color: Color(0xff28292C),
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
              ),
              Text(
                "\$90.00",
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
                text: "4.8 Reviews",
                iconColor: Colors.yellow,
              ),
              bottomCard(
                iconData: Icons.person_outline,
                text: "257 Participants",
                iconColor: Color(0xffFF9008),
              ),
            ],
          ),
        ],
      ),
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
