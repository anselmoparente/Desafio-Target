import 'package:flutter/material.dart';
import 'package:target/app/core/theme/app_colors.dart';

enum DSButtonVariant { primary, secondary }

class DSButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;
  final DSButtonVariant variant;

  const DSButton({
    super.key,
    required this.label,
    this.onPressed,
    this.isLoading = false,
    this.variant = DSButtonVariant.primary,
  });

  @override
  Widget build(BuildContext context) {
    final isDisabled = onPressed == null || isLoading;
    final isPrimary = variant == DSButtonVariant.primary;

    return SizedBox(
      height: 48,
      child: ElevatedButton(
        onPressed: isDisabled ? null : () => onPressed!(),
        style: ElevatedButton.styleFrom(
          backgroundColor: isPrimary ? AppColors.primary : AppColors.surface,
          disabledBackgroundColor: AppColors.disabled,
          foregroundColor: isPrimary ? Colors.white : AppColors.primary,
          side: isPrimary
              ? null
              : const BorderSide(color: AppColors.primary, width: 2.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 0,
        ),
        child: isLoading
            ? const SizedBox(
                height: 20.0,
                width: 20.0,
                child: CircularProgressIndicator(
                  strokeWidth: 2.0,
                  color: Colors.white,
                ),
              )
            : Text(label),
      ),
    );
  }
}
