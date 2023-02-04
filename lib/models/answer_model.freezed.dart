// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnswerModel _$AnswerModelFromJson(Map<String, dynamic> json) {
  return _AnswerModel.fromJson(json);
}

/// @nodoc
mixin _$AnswerModel {
  int get id => throw _privateConstructorUsedError;
  String get nameAz => throw _privateConstructorUsedError;
  String get nameRu => throw _privateConstructorUsedError;
  String get nameEn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerModelCopyWith<AnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerModelCopyWith<$Res> {
  factory $AnswerModelCopyWith(
          AnswerModel value, $Res Function(AnswerModel) then) =
      _$AnswerModelCopyWithImpl<$Res, AnswerModel>;
  @useResult
  $Res call({int id, String nameAz, String nameRu, String nameEn});
}

/// @nodoc
class _$AnswerModelCopyWithImpl<$Res, $Val extends AnswerModel>
    implements $AnswerModelCopyWith<$Res> {
  _$AnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameAz = null,
    Object? nameRu = null,
    Object? nameEn = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nameAz: null == nameAz
          ? _value.nameAz
          : nameAz // ignore: cast_nullable_to_non_nullable
              as String,
      nameRu: null == nameRu
          ? _value.nameRu
          : nameRu // ignore: cast_nullable_to_non_nullable
              as String,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnswerModelCopyWith<$Res>
    implements $AnswerModelCopyWith<$Res> {
  factory _$$_AnswerModelCopyWith(
          _$_AnswerModel value, $Res Function(_$_AnswerModel) then) =
      __$$_AnswerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String nameAz, String nameRu, String nameEn});
}

/// @nodoc
class __$$_AnswerModelCopyWithImpl<$Res>
    extends _$AnswerModelCopyWithImpl<$Res, _$_AnswerModel>
    implements _$$_AnswerModelCopyWith<$Res> {
  __$$_AnswerModelCopyWithImpl(
      _$_AnswerModel _value, $Res Function(_$_AnswerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameAz = null,
    Object? nameRu = null,
    Object? nameEn = null,
  }) {
    return _then(_$_AnswerModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nameAz: null == nameAz
          ? _value.nameAz
          : nameAz // ignore: cast_nullable_to_non_nullable
              as String,
      nameRu: null == nameRu
          ? _value.nameRu
          : nameRu // ignore: cast_nullable_to_non_nullable
              as String,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnswerModel with DiagnosticableTreeMixin implements _AnswerModel {
  const _$_AnswerModel(
      {required this.id,
      required this.nameAz,
      required this.nameRu,
      required this.nameEn});

  factory _$_AnswerModel.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerModelFromJson(json);

  @override
  final int id;
  @override
  final String nameAz;
  @override
  final String nameRu;
  @override
  final String nameEn;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnswerModel(id: $id, nameAz: $nameAz, nameRu: $nameRu, nameEn: $nameEn)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnswerModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('nameAz', nameAz))
      ..add(DiagnosticsProperty('nameRu', nameRu))
      ..add(DiagnosticsProperty('nameEn', nameEn));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameAz, nameAz) || other.nameAz == nameAz) &&
            (identical(other.nameRu, nameRu) || other.nameRu == nameRu) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nameAz, nameRu, nameEn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerModelCopyWith<_$_AnswerModel> get copyWith =>
      __$$_AnswerModelCopyWithImpl<_$_AnswerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerModelToJson(
      this,
    );
  }
}

abstract class _AnswerModel implements AnswerModel {
  const factory _AnswerModel(
      {required final int id,
      required final String nameAz,
      required final String nameRu,
      required final String nameEn}) = _$_AnswerModel;

  factory _AnswerModel.fromJson(Map<String, dynamic> json) =
      _$_AnswerModel.fromJson;

  @override
  int get id;
  @override
  String get nameAz;
  @override
  String get nameRu;
  @override
  String get nameEn;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerModelCopyWith<_$_AnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
