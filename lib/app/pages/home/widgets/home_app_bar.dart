import 'package:flutter/material.dart';
import 'package:target/app/core/routes/app_routes.dart';
import 'package:target/app/core/widgets/ds_app_bar.dart';
import 'package:target/app/core/widgets/ds_icon_button.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DSAppBar(
      title: 'Anotações',
      actions: [
        DSIconButton(
          icon: Icons.bar_chart,
          tooltip: 'Estatísticas',
          onPressed: () => Navigator.pushNamed(context, AppRoutes.details),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
