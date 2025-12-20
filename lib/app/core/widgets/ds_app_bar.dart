import 'package:flutter/material.dart';
import 'package:target/app/core/theme/app_colors.dart';
import 'package:target/app/core/theme/app_typography.dart';

class DSAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final List<Widget>? actions;

  const DSAppBar({
    super.key,
    required this.title,
    this.showBackButton = false,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: showBackButton,
      backgroundColor: AppColors.primary,
      title: Text(
        title,
        style: AppTypography.title.copyWith(color: Colors.white),
      ),
      centerTitle: true,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
