import 'package:flutter/material.dart';
import 'package:target/app/core/theme/app_colors.dart';
import 'package:target/app/core/theme/app_spacing.dart';
import 'package:target/app/core/theme/app_typography.dart';

class DSEmptyState extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? description;

  const DSEmptyState({
    super.key,
    required this.icon,
    required this.title,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 64,
              color: AppColors.primary.withValues(alpha: 0.6),
            ),
            const SizedBox(height: AppSpacing.md),
            Text(
              title,
              style: AppTypography.title,
              textAlign: TextAlign.center,
            ),
            if (description != null) ...[
              const SizedBox(height: AppSpacing.sm),
              Text(
                description!,
                style: AppTypography.body,
                textAlign: TextAlign.center,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
