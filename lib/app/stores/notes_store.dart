import 'dart:convert';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:target/app/models/note_model.dart';
import 'package:uuid/uuid.dart';

part 'notes_store.g.dart';

class NotesStore = NotesStoreBase with _$NotesStore;

abstract class NotesStoreBase with Store {
  static const _storageKey = 'notes';

  final _uuid = const Uuid();

  NotesStoreBase() {
    _loadNotes();
  }

  @observable
  String newNoteText = '';

  @observable
  ObservableList<NoteModel> notes = ObservableList<NoteModel>();

  @computed
  bool get canAddNote => newNoteText.trim().isNotEmpty;

  @computed
  int get totalNotes => notes.length;

  @computed
  int get totalEdits => notes.fold(0, (sum, note) => sum + note.editCount);

  @computed
  int get totalCharacters =>
      notes.fold(0, (sum, note) => sum + note.value.length);

  @computed
  int get totalLetters =>
      notes.fold(0, (sum, note) => sum + _countLetters(note.value));

  @computed
  int get totalNumbers =>
      notes.fold(0, (sum, note) => sum + _countNumbers(note.value));

  @action
  void setNewNoteText(String value) => newNoteText = value;

  @action
  void addNote() {
    if (!canAddNote) return;

    notes.add(NoteModel(id: _uuid.v4(), value: newNoteText));

    newNoteText = '';
    _saveNotes();
  }

  @action
  void updateNote(NoteModel note, String newValue) {
    if (newValue.trim().isEmpty) return;

    note.updateValue(newValue);
    notes = ObservableList.of(notes);
    _saveNotes();
  }

  @action
  void removeItem(NoteModel note) {
    notes.remove(note);
    _saveNotes();
  }

  Future<void> _loadNotes() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_storageKey);

    if (jsonString == null) return;

    final List decoded = jsonDecode(jsonString);

    notes = ObservableList.of(
      decoded.map((e) => NoteModel.fromMap(e)).toList(),
    );
  }

  Future<void> _saveNotes() async {
    final prefs = await SharedPreferences.getInstance();

    final jsonString = jsonEncode(notes.map((e) => e.toMap()).toList());

    await prefs.setString(_storageKey, jsonString);
  }

  int _countLetters(String text) => RegExp(r'[a-zA-Z]').allMatches(text).length;

  int _countNumbers(String text) => RegExp(r'\d').allMatches(text).length;
}
