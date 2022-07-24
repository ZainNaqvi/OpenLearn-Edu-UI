import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List list = [
      {
        "title": "Niles Peppertrout",
        "subTitle": "Dance Teacher",
        "star": "5.0 Reviews",
      },
      {
        "title": "Ingredia Nutrisha",
        "subTitle": "Music Teacher",
        "star": "4.8 Reviews",
      },
      {
        "title": "Penny Tool",
        "subTitle": "Dance Teacher",
        "star": "4.9 Reviews",
      },
      {
        "title": "Indigo Violet",
        "subTitle": "Theater Teacher",
        "star": "4.8 Reviews",
      },
      {
        "title": "Elon Gated",
        "subTitle": "Music Teacher",
        "star": "5.0 Reviews",
      },
      {
        "title": "Dianne Ameter",
        "subTitle": "Dance Teacher",
        "star": "4.9 Reviews",
      },
      {
        "title": "Quiche Hollandaise",
        "subTitle": "Design Instructor",
        "star": "4.8 Reviews",
      },
    ];
    return Scaffold(
      appBar: getAppbar(),
      body: SizedBox(
        height: double.maxFinite,
        child: ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: List.generate(
            list.length,
            (index) => customCardTile(
              star: list[index]['star'],
              subTitle: list[index]['subTitle'],
              title: list[index]['title'],
            ),
          ),
        ),
      ),
    );
  }

  Container customCardTile({
    required String title,
    required String subTitle,
    required String star,
  }) {
    return Container(
      width: 386.w,
      height: 90,
      margin: EdgeInsets.only(top: 4.h, bottom: 12.h, left: 14.w, right: 14.w),
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
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color(0xffD0D1D7),
          radius: 44,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
            color: Color(0xff28292C),
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  subTitle,
                  style: TextStyle(
                    color: Color(0xff999BA4),
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                  ),
                ),
                Icon(
                  Icons.more_vert,
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                SizedBox(width: 8.w),
                Text(
                  "$star",
                  style: TextStyle(
                    color: Color(0xff999BA4),
                    fontWeight: FontWeight.w400,
                    fontSize: 10.sp,
                  ),
                ),
              ],
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
        "Mentor",
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
