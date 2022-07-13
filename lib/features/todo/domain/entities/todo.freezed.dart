// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoEntityCopyWith<TodoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEntityCopyWith<$Res> {
  factory $TodoEntityCopyWith(
          TodoEntity value, $Res Function(TodoEntity) then) =
      _$TodoEntityCopyWithImpl<$Res>;
  $Res call({String id, String title, bool completed});
}

/// @nodoc
class _$TodoEntityCopyWithImpl<$Res> implements $TodoEntityCopyWith<$Res> {
  _$TodoEntityCopyWithImpl(this._value, this._then);

  final TodoEntity _value;
  // ignore: unused_field
  final $Res Function(TodoEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? completed = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_TodoEntityCopyWith<$Res>
    implements $TodoEntityCopyWith<$Res> {
  factory _$$_TodoEntityCopyWith(
          _$_TodoEntity value, $Res Function(_$_TodoEntity) then) =
      __$$_TodoEntityCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, bool completed});
}

/// @nodoc
class __$$_TodoEntityCopyWithImpl<$Res> extends _$TodoEntityCopyWithImpl<$Res>
    implements _$$_TodoEntityCopyWith<$Res> {
  __$$_TodoEntityCopyWithImpl(
      _$_TodoEntity _value, $Res Function(_$_TodoEntity) _then)
      : super(_value, (v) => _then(v as _$_TodoEntity));

  @override
  _$_TodoEntity get _value => super._value as _$_TodoEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? completed = freezed,
  }) {
    return _then(_$_TodoEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TodoEntity implements _TodoEntity {
  _$_TodoEntity(
      {required this.id, required this.title, required this.completed});

  @override
  final String id;
  @override
  final String title;
  @override
  final bool completed;

  @override
  String toString() {
    return 'TodoEntity(id: $id, title: $title, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.completed, completed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(completed));

  @JsonKey(ignore: true)
  @override
  _$$_TodoEntityCopyWith<_$_TodoEntity> get copyWith =>
      __$$_TodoEntityCopyWithImpl<_$_TodoEntity>(this, _$identity);
}

abstract class _TodoEntity implements TodoEntity {
  factory _TodoEntity(
      {required final String id,
      required final String title,
      required final bool completed}) = _$_TodoEntity;

  @override
  String get id;
  @override
  String get title;
  @override
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$$_TodoEntityCopyWith<_$_TodoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
