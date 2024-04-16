import 'package:dribble_test/src/core/consts/d_assets.dart';
import 'package:dribble_test/src/core/consts/d_colors.dart';
import 'package:empty_widget/empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyList extends StatelessWidget {
  const EmptyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: EmptyWidget(
        image: '${DAssets.bicycleImage}_1.png',
        title: 'EMPTY',
        titleTextStyle: TextStyle(
          fontFamily: 'Manrope',
          fontSize: 12.sp,
          fontWeight: FontWeight.bold,
          color: DColors.grey,
        ),
      ),
    );
  }
}
