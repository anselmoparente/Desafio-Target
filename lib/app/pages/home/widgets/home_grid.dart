import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:target/app/core/theme/app_spacing.dart';
import 'package:target/app/pages/home/widgets/home_empty_state.dart';
import 'package:target/app/pages/home/widgets/home_grid_item.dart';
import 'package:target/app/stores/notes_store.dart';

class HomeGrid extends StatelessWidget {
  const HomeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final store = context.read<NotesStore>();

    return Expanded(
      child: Observer(
        builder: (_) {
          if (store.notes.isEmpty) {
            return const HomeEmptyState();
          }

          return ListView.separated(
            padding: const EdgeInsets.all(AppSpacing.sm),
            itemCount: store.notes.length,
            separatorBuilder: (_, _) => const SizedBox(height: AppSpacing.sm),
            itemBuilder: (context, index) {
              final note = store.notes[index];

              return HomeGridItem(note: note);
            },
          );
        },
      ),
    );
  }
}
