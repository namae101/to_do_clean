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

TodoModel _$TodoModelFromJson(Map<String, dynamic> json) {
  return _TodoModel.fromJson(json);
}

/// @nodoc
mixin _$TodoModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  bool get completed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoModelCopyWith<TodoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoModelCopyWith<$Res> {
  factory $TodoModelCopyWith(TodoModel value, $Res Function(TodoModel) then) =
      _$TodoModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) bool completed});
}

/// @nodoc
class _$TodoModelCopyWithImpl<$Res> implements $TodoModelCopyWith<$Res> {
  _$TodoModelCopyWithImpl(this._value, this._then);

  final TodoModel _value;
  // ignore: unused_field
  final $Res Function(TodoModel) _then;

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
abstract class _$$_TodoModelCopyWith<$Res> implements $TodoModelCopyWith<$Res> {
  factory _$$_TodoModelCopyWith(
          _$_TodoModel value, $Res Function(_$_TodoModel) then) =
      __$$_TodoModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) bool completed});
}

/// @nodoc
class __$$_TodoModelCopyWithImpl<$Res> extends _$TodoModelCopyWithImpl<$Res>
    implements _$$_TodoModelCopyWith<$Res> {
  __$$_TodoModelCopyWithImpl(
      _$_TodoModel _value, $Res Function(_$_TodoModel) _then)
      : super(_value, (v) => _then(v as _$_TodoModel));

  @override
  _$_TodoModel get _value => super._value as _$_TodoModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? completed = freezed,
  }) {
    return _then(_$_TodoModel(
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
@JsonSerializable()
@HiveType(typeId: 1, adapterName: 'TodoHiveAdapter')
class _$_TodoModel with DiagnosticableTreeMixin implements _TodoModel {
  _$_TodoModel(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.title,
      @HiveField(2) required this.completed});

  factory _$_TodoModel.fromJson(Map<String, dynamic> json) =>
      _$$_TodoModelFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String title;
  @override
  @HiveField(2)
  final bool completed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoModel(id: $id, title: $title, completed: $completed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('completed', completed));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.completed, completed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(completed));

  @JsonKey(ignore: true)
  @override
  _$$_TodoModelCopyWith<_$_TodoModel> get copyWith =>
      __$$_TodoModelCopyWithImpl<_$_TodoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoModelToJson(this);
  }
}

abstract class _TodoModel implements TodoModel {
  factory _TodoModel(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String title,
      @HiveField(2) required final bool completed}) = _$_TodoModel;

  factory _TodoModel.fromJson(Map<String, dynamic> json) =
      _$_TodoModel.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get title;
  @override
  @HiveField(2)
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$$_TodoModelCopyWith<_$_TodoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
