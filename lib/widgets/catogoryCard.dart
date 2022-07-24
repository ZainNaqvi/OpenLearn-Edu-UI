import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

Container categoryCart(
    {required String title, required String desc, required String iconData}) {
  return Container(
    margin: EdgeInsets.only(right: 14.w),
    padding: EdgeInsets.only(left: 14.w, right: 14.w, top: 14.h, bottom: 4.h),
    width: 164.w,
    height: 68.h,
    decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(14.r),
    ),
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.all(8.r),
          width: 40.w,
          height: 40.h,
          decoration: BoxDecoration(
            color: Color(0xffF6F8FF),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: SvgPicture.asset(iconData),
        ),
        SizedBox(
          width: 14.w,
        ),
        Expanded(
          child: Container(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Color(0xff28292C),
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  desc,
                  style: TextStyle(
                    color: Color(0xff999BA4),
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
