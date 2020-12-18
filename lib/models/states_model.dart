import 'dart:convert';

class StateModel {
  String id;
  String name;

  StateModel({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory StateModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return StateModel(
      id: map['id'],
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory StateModel.fromJson(String source) => StateModel.fromMap(json.decode(source));
}
