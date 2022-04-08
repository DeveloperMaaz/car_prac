import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88.h,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 99.w,
            height: 85.h,
            child: SvgPicture.asset("assets/images/Frame 2.svg",
              height:24.h,
              width: 24.w,
            ),
          ),
          SizedBox(
            width: 99.w,
            height: 85.h,
            child: SvgPicture.asset("assets/images/Frame 3.svg",
              height:24.h,
              width: 24.w,
            ),
          ),
        ],
      ),
    );
  }
}
