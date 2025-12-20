import 'package:flutter/material.dart';
import 'package:target/app/core/theme/app_colors.dart';
import 'package:target/app/core/theme/app_typography.dart';

class DSButton extends StatelessWidget {
  final String label;
  final Future<void> Function()? onPressed;
  final bool isLoading;

  const DSButton({
    super.key,
    required this.label,
    this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final isDisabled = onPressed == null || isLoading;

    return SizedBox(
      height: 48,
      child: ElevatedButton(
        onPressed: isDisabled ? null : () => onPressed!(),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          disabledBackgroundColor: AppColors.disabled,
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
            : Text(label, style: AppTypography.button),
      ),
    );
  }
}
