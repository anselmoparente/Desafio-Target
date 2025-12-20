class NoteModel {
  final String id;
  String value;
  int editCount;

  NoteModel({required this.id, required this.value, this.editCount = 0});

  void updateValue(String newValue) {
    if (newValue != value) {
      value = newValue;
      editCount++;
    }
  }
}
