import 'package:car_prac/presentation/features/widget/bottom_bar.dart';
import 'package:car_prac/presentation/features/widget/divider_widget.dart';
import 'package:car_prac/presentation/features/widget/list_vehicles.dart';
import 'package:car_prac/presentation/features/widget/stack_widget.dart';
import 'package:car_prac/presentation/features/widget/vehicle_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(left: 58.w),
          child: Text(
            "Home",
            style: TextStyle(
                fontSize: 18.sp, color: const Color.fromRGBO(55, 65, 81, 1)),
          ),
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: SvgPicture.asset('assets/images/lead.svg'),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w, left: 50.w),
            child: SvgPicture.asset(
              "assets/images/bell.svg",
            ),
          ),
          Image.asset("assets/images/Ellipse.png"),
        ],
      ),
      body: CustomScrollView(slivers: [
        SliverFillRemaining(
          child: Column(children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 21.w, top: 30.h, right: 21.w),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          width: 276.w,
                          height: 90.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30.0, right: 15.0),
                                child: Text(
                                  'Search for Car',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: const Color.fromRGBO(33, 33, 33, 1),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 21.w),
                                child: Image(
                                    width: 18.w,
                                    height: 18.h,
                                    image: const AssetImage(
                                        'assets/images/Vector.png')),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          width: 70.w,
                          height: 90.h,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Image(
                              width: 16.w,
                              height: 16.h,
                              image:
                                  const AssetImage('assets/images/filter.png'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  StackUsage(),
                  const SizedBox(
                    height: 13.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.w, right: 200.w),
                    child: const Text(
                      "Available Vehicles",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff212121),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 13.0,
                  ),
                  const ListVehicle(),
                ],
              )),
            ),
            const BottomBar(),
          ]),
        ),
         //BottomBar(),//call bottom navigator here
      ]),
    );
  }
}
