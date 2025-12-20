import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTypography {
  AppTypography._();

  static const headline = TextStyle(
    fontSize: 26.0,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  static const title = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const body = TextStyle(fontSize: 14.0, color: AppColors.textSecondary);

  static const button = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
