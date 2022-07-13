// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodoHiveAdapter extends TypeAdapter<_$_TodoModel> {
  @override
  final int typeId = 1;

  @override
  _$_TodoModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_TodoModel(
      id: fields[0] as String,
      title: fields[1] as String,
      completed: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, _$_TodoModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.completed);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoModel _$$_TodoModelFromJson(Map<String, dynamic> json) => _$_TodoModel(
      id: json['id'] as String,
      title: json['title'] as String,
      completed: json['completed'] as bool,
    );

Map<String, dynamic> _$$_TodoModelToJson(_$_TodoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'completed': instance.completed,
    };
