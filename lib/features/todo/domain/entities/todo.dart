import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

@freezed
class TodoEntity with _$TodoEntity {
  factory TodoEntity({
    required String id,
    required String title,
    required bool completed,
  }) = _TodoEntity;
}
