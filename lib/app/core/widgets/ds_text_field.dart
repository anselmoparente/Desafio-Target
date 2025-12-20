import 'package:flutter/material.dart';
import 'package:target/app/core/theme/app_borders.dart';
import 'package:target/app/core/theme/app_colors.dart';
import 'package:target/app/core/theme/app_spacing.dart';
import 'package:target/app/core/theme/app_typography.dart';

class DSTextField extends StatelessWidget {
  final String label;
  final bool obscureText;
  final ValueChanged<String> onChanged;
  final String? errorText;

  const DSTextField({
    super.key,
    required this.label,
    this.obscureText = false,
    required this.onChanged,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: AppTypography.body.copyWith(color: AppColors.textPrimary),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: AppTypography.body,
        errorText: errorText,
        errorStyle: AppTypography.body.copyWith(color: AppColors.error),
        filled: true,
        fillColor: AppColors.surface,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.md,
        ),
        border: OutlineInputBorder(
          borderRadius: AppBorders.radiusMd,
          borderSide: const BorderSide(color: AppColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: AppBorders.radiusMd,
          borderSide: const BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: AppBorders.radiusMd,
          borderSide: const BorderSide(color: AppColors.primary),
        ),
      ),
      onChanged: onChanged,
    );
  }
}
