// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NotesStore on NotesStoreBase, Store {
  Computed<bool>? _$canAddNoteComputed;

  @override
  bool get canAddNote => (_$canAddNoteComputed ??= Computed<bool>(
    () => super.canAddNote,
    name: 'NotesStoreBase.canAddNote',
  )).value;
  Computed<int>? _$totalNotesComputed;

  @override
  int get totalNotes => (_$totalNotesComputed ??= Computed<int>(
    () => super.totalNotes,
    name: 'NotesStoreBase.totalNotes',
  )).value;
  Computed<int>? _$totalEditsComputed;

  @override
  int get totalEdits => (_$totalEditsComputed ??= Computed<int>(
    () => super.totalEdits,
    name: 'NotesStoreBase.totalEdits',
  )).value;
  Computed<int>? _$totalCharactersComputed;

  @override
  int get totalCharacters => (_$totalCharactersComputed ??= Computed<int>(
    () => super.totalCharacters,
    name: 'NotesStoreBase.totalCharacters',
  )).value;
  Computed<int>? _$totalLettersComputed;

  @override
  int get totalLetters => (_$totalLettersComputed ??= Computed<int>(
    () => super.totalLetters,
    name: 'NotesStoreBase.totalLetters',
  )).value;
  Computed<int>? _$totalNumbersComputed;

  @override
  int get totalNumbers => (_$totalNumbersComputed ??= Computed<int>(
    () => super.totalNumbers,
    name: 'NotesStoreBase.totalNumbers',
  )).value;

  late final _$newNoteTextAtom = Atom(
    name: 'NotesStoreBase.newNoteText',
    context: context,
  );

  @override
  String get newNoteText {
    _$newNoteTextAtom.reportRead();
    return super.newNoteText;
  }

  @override
  set newNoteText(String value) {
    _$newNoteTextAtom.reportWrite(value, super.newNoteText, () {
      super.newNoteText = value;
    });
  }

  late final _$notesAtom = Atom(name: 'NotesStoreBase.notes', context: context);

  @override
  ObservableList<NoteModel> get notes {
    _$notesAtom.reportRead();
    return super.notes;
  }

  @override
  set notes(ObservableList<NoteModel> value) {
    _$notesAtom.reportWrite(value, super.notes, () {
      super.notes = value;
    });
  }

  late final _$NotesStoreBaseActionController = ActionController(
    name: 'NotesStoreBase',
    context: context,
  );

  @override
  void setNewNoteText(String value) {
    final _$actionInfo = _$NotesStoreBaseActionController.startAction(
      name: 'NotesStoreBase.setNewNoteText',
    );
    try {
      return super.setNewNoteText(value);
    } finally {
      _$NotesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addNote() {
    final _$actionInfo = _$NotesStoreBaseActionController.startAction(
      name: 'NotesStoreBase.addNote',
    );
    try {
      return super.addNote();
    } finally {
      _$NotesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateNote(NoteModel note, String newValue) {
    final _$actionInfo = _$NotesStoreBaseActionController.startAction(
      name: 'NotesStoreBase.updateNote',
    );
    try {
      return super.updateNote(note, newValue);
    } finally {
      _$NotesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeItem(NoteModel note) {
    final _$actionInfo = _$NotesStoreBaseActionController.startAction(
      name: 'NotesStoreBase.removeItem',
    );
    try {
      return super.removeItem(note);
    } finally {
      _$NotesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
newNoteText: ${newNoteText},
notes: ${notes},
canAddNote: ${canAddNote},
totalNotes: ${totalNotes},
totalEdits: ${totalEdits},
totalCharacters: ${totalCharacters},
totalLetters: ${totalLetters},
totalNumbers: ${totalNumbers}
    ''';
  }
}
