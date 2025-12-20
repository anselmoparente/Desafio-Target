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

  Map<String, dynamic> toMap() => {
    'id': id,
    'value': value,
    'editCount': editCount,
  };

  factory NoteModel.fromMap(Map<String, dynamic> map) {
    return NoteModel(
      id: map['id'],
      value: map['value'],
      editCount: map['editCount'],
    );
  }
}
