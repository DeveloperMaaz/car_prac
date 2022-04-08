import 'package:car_prac/presentation/features/model/car_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StackUsage extends StatefulWidget {


  @override
  _StackUsageState createState() => _StackUsageState();
}

class _StackUsageState extends State<StackUsage> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: CategoryCar.modelCarData.length ,
          itemBuilder:(context,index){
   return Padding(
     padding: const EdgeInsets.all(8.0),
     child: Stack(overflow: Overflow.visible, children: [
       Container(
        // height: 229.h,
         width: 135.w,
         decoration: BoxDecoration(
           boxShadow: [
             BoxShadow(
               color: CategoryCar.modelCarData[index].color,
             ),
           ],
           color: CategoryCar.modelCarData[index].color,
           borderRadius: BorderRadius.circular(20.0),
         ),
       ),
       Positioned(
         left: -40.w,
         right: 5,
         child: SizedBox(
           height: 196.h,
           width: 231.w,
           child: Center(
             child: Image.asset(
               CategoryCar.modelCarData[index].image,
               height: 156.h,
               width: 221.w,
             ),
           ),
         ),
       ),
       Padding(
         padding: EdgeInsets.only(left: 40.w, right: 40.w, top: 190.h),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(CategoryCar.modelCarData[index].name,
                 style: TextStyle(
                   fontSize: 14.sp,
                   fontWeight: FontWeight.bold,
                   color: CategoryCar.modelCarData[index].colorText,
                 )),
             Text('${CategoryCar.modelCarData[index].number}',
                 style: TextStyle(
                   fontSize: 14.sp,
                   color: CategoryCar.modelCarData[index].colorText,
                 ))
           ],
         ),
       ),
     ]),
   );
          }),
    );
  }
}






