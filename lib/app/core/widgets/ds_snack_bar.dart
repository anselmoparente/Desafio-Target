import 'package:flutter/material.dart';
import 'package:target/app/core/theme/app_borders.dart';
import 'package:target/app/core/theme/app_colors.dart';
import 'package:target/app/core/theme/app_spacing.dart';
import 'package:target/app/core/theme/app_typography.dart';

enum FeedbackType { success, error, info, warning }

class DSSnackBar {
  DSSnackBar._();

  static void show(
    BuildContext context, {
    required String message,
    FeedbackType type = FeedbackType.info,
    Duration duration = const Duration(seconds: 2),
  }) {
    Color backgroundColor;
    Icon icon;

    switch (type) {
      case FeedbackType.success:
        backgroundColor = AppColors.success;
        icon = const Icon(Icons.check_circle, color: AppColors.textOnPrimary);
        break;
      case FeedbackType.error:
        backgroundColor = AppColors.error;
        icon = const Icon(Icons.error, color: AppColors.textOnPrimary);
        break;
      case FeedbackType.warning:
        backgroundColor = AppColors.warning;
        icon = const Icon(Icons.warning, color: AppColors.textOnPrimary);
        break;
      case FeedbackType.info:
        backgroundColor = AppColors.info;
        icon = const Icon(Icons.info, color: AppColors.textOnPrimary);
        break;
    }

    final snackBar = SnackBar(
      content: Row(
        spacing: AppSpacing.md,
        children: [
          icon,
          Expanded(
            child: Text(
              message,
              style: AppTypography.body.copyWith(
                color: AppColors.textOnPrimary,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: backgroundColor,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: AppBorders.radiusMd),
      duration: duration,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
