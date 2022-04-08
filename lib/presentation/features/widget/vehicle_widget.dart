import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvailableVehicles extends StatefulWidget {
  String image;
  String heading;
  String subText;
  String subText1;

  AvailableVehicles({
    required this.image,
    required this.heading,
    required this.subText,
    required this.subText1,
  });

  @override
  _AvailableVehiclesState createState() => _AvailableVehiclesState();
}

class _AvailableVehiclesState extends State<AvailableVehicles> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          width: 150.w,
          height: 145.h,
          image: AssetImage(widget.image),
        ),
        Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5.w, bottom: 9.h),
              child: Text(
                widget.heading,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff212121),
                ),
              ),
            ),
            SizedBox(height: 9.h),
            Padding(
              padding: EdgeInsets.only(bottom: 9.h),
              child: Text(
                widget.subText,
                style:
                    TextStyle(fontSize: 14.sp, color: const Color(0xff212121)),
              ),
            ),
            SizedBox(height: 9.h),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 19.w, bottom: 9.h),
                  child: Text(
                    widget.subText1,
                    style: TextStyle(
                      color: const Color(0xff057A55),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 9.h),
                  child: Text(
                    "/month",
                    style: TextStyle(
                        color: const Color(0xff7D8EA3), fontSize: 12.sp),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 12.h,left: 60.w,right: 43.0),
                  child: Image(

                    width: 18.w,
                    height: 14.h,
                    image: const AssetImage('assets/images/Vector (1).png'),)
                ),

              ],
            )
          ],
        )
      ],
    );
  }
}
