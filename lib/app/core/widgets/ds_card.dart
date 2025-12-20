import 'package:flutter/material.dart';
import 'package:target/app/core/theme/app_borders.dart';
import 'package:target/app/core/theme/app_colors.dart';
import 'package:target/app/core/theme/app_spacing.dart';

class DSCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;

  const DSCard({super.key, required this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppBorders.radiusMd,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8.0,
            offset: const Offset(0.0, 4.0),
          ),
        ],
      ),
      child: child,
    );
  }
}
