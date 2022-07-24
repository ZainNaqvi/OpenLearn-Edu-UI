import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

OutlineInputBorder outlinedBorder() {
  return OutlineInputBorder(
    gapPadding: 1,
    borderSide: BorderSide(
      color: Color(0xffEAEBEC),
    ),
    borderRadius: BorderRadius.circular(20.r),
  );
}
