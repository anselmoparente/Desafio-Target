import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:target/app/core/theme/app_spacing.dart';
import 'package:target/app/core/widgets/ds_button.dart';
import 'package:target/app/core/widgets/ds_card.dart';
import 'package:target/app/core/widgets/ds_text_field.dart';
import 'package:target/app/stores/notes_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeInputCard extends StatefulWidget {
  const HomeInputCard({super.key});

  @override
  State<HomeInputCard> createState() => _HomeInputCardState();
}

class _HomeInputCardState extends State<HomeInputCard> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final store = context.read<NotesStore>();

    return DSCard(
      child: Row(
        children: [
          Expanded(
            child: DSTextField(
              label: 'Digite sua anotação aqui',
              controller: _controller,
              focusNode: _focusNode,
              onChanged: store.setNewNoteText,
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Observer(
            builder: (_) => DSButton(
              label: 'Adicionar',
              onPressed: store.canAddNote
                  ? () {
                      store.addNote();
                      _controller.clear();
                      _focusNode.unfocus();
                    }
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
