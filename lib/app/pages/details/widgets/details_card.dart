import 'package:flutter/material.dart';
import 'package:target/app/core/theme/app_typography.dart';
import 'package:target/app/core/widgets/ds_card.dart';

class DetailsCard extends StatelessWidget {
  final String label;
  final String value;

  const DetailsCard({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return DSCard(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: AppTypography.body),
          Text(value, style: AppTypography.headline),
        ],
      ),
    );
  }
}
