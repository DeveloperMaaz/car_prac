import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividerBar extends StatelessWidget {
  const DividerBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color:  const Color.fromRGBO(219, 219, 219, 1),
      height: 2.h,
      thickness: 1,
    );
  }
}
