import 'package:flutter/material.dart';
import 'package:target/app/core/theme/app_spacing.dart';
import 'package:target/app/pages/home/widgets/home_app_bar.dart';
import 'package:target/app/pages/home/widgets/home_input_card.dart';
import 'package:target/app/pages/home/widgets/home_grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          children: const [
            HomeInputCard(),
            SizedBox(height: AppSpacing.lg),
            HomeGrid(),
          ],
        ),
      ),
    );
  }
}
