import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:target/app/core/theme/app_colors.dart';
import 'package:target/app/core/theme/app_spacing.dart';
import 'package:target/app/core/theme/app_typography.dart';
import 'package:target/app/core/widgets/ds_button.dart';
import 'package:target/app/core/widgets/ds_card.dart';
import 'package:target/app/core/widgets/ds_icon_button.dart';
import 'package:target/app/core/widgets/ds_snack_bar.dart';
import 'package:target/app/core/widgets/ds_text_field.dart';
import 'package:target/app/models/note_model.dart';
import 'package:target/app/stores/notes_store.dart';

class HomeGridItem extends StatelessWidget {
  final NoteModel note;

  const HomeGridItem({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    final store = context.read<NotesStore>();

    return DSCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(note.value, style: AppTypography.body),
          const SizedBox(height: AppSpacing.sm),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              DSIconButton(
                icon: Icons.edit,
                tooltip: 'Editar',
                onPressed: () => _openEditDialog(context, store),
              ),
              const SizedBox(width: AppSpacing.xs),
              DSIconButton(
                icon: Icons.delete,
                tooltip: 'Excluir',
                onPressed: () {
                  store.removeItem(note);

                  DSSnackBar.show(
                    context,
                    message: 'Nota excluída com sucesso!',
                    type: FeedbackType.warning,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _openEditDialog(BuildContext context, NotesStore store) {
    final controller = TextEditingController(text: note.value);
    final focusNode = FocusNode();

    showDialog(
      context: context,
      builder: (_) {
        return StatefulBuilder(
          builder: (context, setState) {
            final isValid =
                controller.text.trim().isNotEmpty &&
                controller.text.trim() != note.value;

            return AlertDialog(
              backgroundColor: AppColors.surface,
              title: Text('Editar anotação', style: AppTypography.title),
              content: DSTextField(
                label: 'Anotação',
                controller: controller,
                focusNode: focusNode,
                onChanged: (_) => setState(() {}),
              ),
              actions: [
                Row(
                  children: [
                    Expanded(
                      child: DSButton(
                        label: 'Cancelar',
                        variant: DSButtonVariant.secondary,
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    const SizedBox(width: AppSpacing.sm),
                    Expanded(
                      child: DSButton(
                        label: 'Salvar',
                        onPressed: isValid
                            ? () {
                                store.updateNote(note, controller.text.trim());
                                Navigator.pop(context);
                                DSSnackBar.show(
                                  context,
                                  message: 'Nota atualizada com sucesso!',
                                  type: FeedbackType.success,
                                );
                              }
                            : null,
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }
}
