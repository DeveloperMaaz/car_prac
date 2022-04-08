import 'package:car_prac/presentation/features/widget/vehicle_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'divider_widget.dart';

class ListVehicle extends StatefulWidget {
  const ListVehicle({Key? key}) : super(key: key);

  @override
  _ListVehicleState createState() => _ListVehicleState();
}

class _ListVehicleState extends State<ListVehicle> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AvailableVehicles(
            image: 'assets/images/Frame 6.png',
            heading: 'Toyota Camry iA',
            subText: '4-Cyl 1.5 Liter Engine',
            subText1: '\$500',
          ),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
            child: DividerBar(),
          ),
          AvailableVehicles(
            image: 'assets/images/Frame 7.png',
            heading: 'Serena levena',
            subText: '10-Cyl 1.5 Liter Engine',
            subText1: '\$380',
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
            child: DividerBar(),
          ),
          AvailableVehicles(
            image: 'assets/images/Frame 8.png',
            heading: 'Opel Insignia',
            subText: '10-Cyl 1.9 Liter Engine',
            subText1: '\$440',
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
            child: DividerBar(),
          ),
          AvailableVehicles(
            image: 'assets/images/Frame 10.png',
            heading: 'Toyota Camry Le',
            subText: '10-Cyl 1.5 Liter Engine',
            subText1: '\$680',
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
            child: DividerBar(),
          ),
          AvailableVehicles(
            image: 'assets/images/Frame 9.png',
            heading: 'Toyota Camry Le',
            subText: '10-Cyl 1.5 Liter Engine',
            subText1: '\$680',
          ),
        ],
      ),
    );
  }
}
