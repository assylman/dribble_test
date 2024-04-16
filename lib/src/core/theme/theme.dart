import 'package:flutter/material.dart';

import '../consts/d_colors.dart';

final base = ThemeData();

final lightTheme = base.copyWith(
  brightness: Brightness.light,
  primaryColor: DColors.grey,
  scaffoldBackgroundColor: DColors.lightBg,
);
