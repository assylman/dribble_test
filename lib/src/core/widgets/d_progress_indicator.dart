import 'package:dribble_test/src/core/consts/d_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DProgressIndicator extends StatelessWidget {
  const DProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.w),
      child: Center(
        child: SizedBox(
          width: 22.w,
          height: 22.w,
          child: CircularProgressIndicator(
            strokeWidth: 4.0.w,
            color: DColors.black,
          ),
        ),
      ),
    );
  }
}
