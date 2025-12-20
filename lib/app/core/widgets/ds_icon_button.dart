import 'package:flutter/material.dart';
import 'package:target/app/core/theme/app_borders.dart';
import '../theme/app_colors.dart';

class DSIconButton extends StatelessWidget {
  final IconData icon;
  final Future<void> Function()? onPressed;
  final Color? color;
  final String? tooltip;

  const DSIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.color,
    this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: tooltip,
      iconSize: 20.0,
      splashRadius: 20.0,
      onPressed: onPressed,
      icon: Icon(icon, color: color ?? AppColors.primary),
      style: IconButton.styleFrom(
        backgroundColor: AppColors.surface,
        shape: RoundedRectangleBorder(borderRadius: AppBorders.radiusMd),
      ),
    );
  }
}
