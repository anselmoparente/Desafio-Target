import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:target/app/core/theme/app_spacing.dart';
import 'package:target/app/core/widgets/ds_app_bar.dart';
import 'package:target/app/pages/details/widgets/details_card.dart';
import 'package:target/app/pages/details/widgets/letters_numbers_chart.dart';
import 'package:target/app/stores/notes_store.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final store = context.watch<NotesStore>();

    return Scaffold(
      appBar: const DSAppBar(title: 'Detalhes', showBackButton: true),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          spacing: AppSpacing.lg,
          children: [
            Column(
              spacing: AppSpacing.sm,
              children: [
                DetailsCard(
                  label: 'Quantidade de linhas',
                  value: store.totalNotes.toString(),
                ),
                DetailsCard(
                  label: 'Quantidade de edições',
                  value: store.totalEdits.toString(),
                ),
                DetailsCard(
                  label: 'Caracteres',
                  value: store.totalCharacters.toString(),
                ),
              ],
            ),
            LettersNumbersChart(
              letters: store.totalLetters,
              numbers: store.totalNumbers,
            ),
          ],
        ),
      ),
    );
  }
}
