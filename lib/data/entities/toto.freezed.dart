// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'toto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Toto _$TotoFromJson(Map<String, dynamic> json) {
  return _Toto.fromJson(json);
}

/// @nodoc
mixin _$Toto {
  int get id => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TotoCopyWith<Toto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotoCopyWith<$Res> {
  factory $TotoCopyWith(Toto value, $Res Function(Toto) then) =
      _$TotoCopyWithImpl<$Res>;
  $Res call({int id, String firstname, int age});
}

/// @nodoc
class _$TotoCopyWithImpl<$Res> implements $TotoCopyWith<$Res> {
  _$TotoCopyWithImpl(this._value, this._then);

  final Toto _value;
  // ignore: unused_field
  final $Res Function(Toto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstname = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_TotoCopyWith<$Res> implements $TotoCopyWith<$Res> {
  factory _$$_TotoCopyWith(_$_Toto value, $Res Function(_$_Toto) then) =
      __$$_TotoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String firstname, int age});
}

/// @nodoc
class __$$_TotoCopyWithImpl<$Res> extends _$TotoCopyWithImpl<$Res>
    implements _$$_TotoCopyWith<$Res> {
  __$$_TotoCopyWithImpl(_$_Toto _value, $Res Function(_$_Toto) _then)
      : super(_value, (v) => _then(v as _$_Toto));

  @override
  _$_Toto get _value => super._value as _$_Toto;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstname = freezed,
    Object? age = freezed,
  }) {
    return _then(_$_Toto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Toto implements _Toto {
  const _$_Toto({required this.id, required this.firstname, required this.age});

  factory _$_Toto.fromJson(Map<String, dynamic> json) => _$$_TotoFromJson(json);

  @override
  final int id;
  @override
  final String firstname;
  @override
  final int age;

  @override
  String toString() {
    return 'Toto(id: $id, firstname: $firstname, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Toto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstname, firstname) &&
            const DeepCollectionEquality().equals(other.age, age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(firstname),
      const DeepCollectionEquality().hash(age));

  @JsonKey(ignore: true)
  @override
  _$$_TotoCopyWith<_$_Toto> get copyWith =>
      __$$_TotoCopyWithImpl<_$_Toto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TotoToJson(
      this,
    );
  }
}

abstract class _Toto implements Toto {
  const factory _Toto(
      {required final int id,
      required final String firstname,
      required final int age}) = _$_Toto;

  factory _Toto.fromJson(Map<String, dynamic> json) = _$_Toto.fromJson;

  @override
  int get id;
  @override
  String get firstname;
  @override
  int get age;
  @override
  @JsonKey(ignore: true)
  _$$_TotoCopyWith<_$_Toto> get copyWith => throw _privateConstructorUsedError;
}
