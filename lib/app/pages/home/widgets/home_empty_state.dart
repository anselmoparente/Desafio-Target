import 'package:flutter/material.dart';
import 'package:target/app/core/theme/app_typography.dart';

class HomeEmptyState extends StatelessWidget {
  const HomeEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Nenhuma anotação adicionada!',
        style: AppTypography.body,
        textAlign: TextAlign.center,
      ),
    );
  }
}
