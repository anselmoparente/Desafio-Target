import 'package:flutter/material.dart';
import 'package:target/app/core/widgets/ds_empty_state.dart';

class HomeEmptyState extends StatelessWidget {
  const HomeEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return const DSEmptyState(
      icon: Icons.note_add_outlined,
      title: 'Nenhuma nota criada',
      description: 'Adicione uma nota usando o campo acima',
    );
  }
}
