import 'package:flutter/material.dart';
import 'package:target/app/core/widgets/ds_empty_state.dart';

class DetailsEmptyState extends StatelessWidget {
  const DetailsEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return const DSEmptyState(
      icon: Icons.bar_chart_outlined,
      title: 'Sem estatísticas',
      description: 'Crie notas para visualizar os dados',
    );
  }
}
