import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';
import '../models/note_model.dart';

part 'notes_store.g.dart';

class NotesStore = NotesStoreBase with _$NotesStore;

abstract class NotesStoreBase with Store {
  final _uuid = const Uuid();

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
  }

  @action
  void updateNote(NoteModel note, String newValue) {
    if (newValue.trim().isEmpty) return;

    note.updateValue(newValue);

    notes = ObservableList.of(notes);
  }

  @action
  void removeItem(NoteModel note) => notes.remove(note);

  int _countLetters(String text) => RegExp(r'[a-zA-Z]').allMatches(text).length;

  int _countNumbers(String text) => RegExp(r'\d').allMatches(text).length;
}
