import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:to_do_clean/features/todo/domain/entities/todo.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class TodoModel with _$TodoModel {
  @HiveType(typeId: 1, adapterName: 'TodoHiveAdapter')
  factory TodoModel({
    @HiveField(0) required String id,
    @HiveField(1) required String title,
    @HiveField(2) required bool completed,
  }) = _TodoModel;
  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);
}

extension TodoModelX on TodoModel {
  TodoEntity toEntity() {
    return TodoEntity(
      id: id,
      title: title,
      completed: completed,
    );
  }
}

extension TodoEntityX on TodoEntity {
  TodoModel toDomain() {
    return TodoModel(
      id: id,
      title: title,
      completed: completed,
    );
  }
}
