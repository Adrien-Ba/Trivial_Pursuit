// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() display,
    required TResult Function() valid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? display,
    TResult? Function()? valid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? display,
    TResult Function()? valid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Display value) display,
    required TResult Function(Valid value) valid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Display value)? display,
    TResult? Function(Valid value)? valid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Display value)? display,
    TResult Function(Valid value)? valid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DisplayCopyWith<$Res> {
  factory _$$DisplayCopyWith(_$Display value, $Res Function(_$Display) then) =
      __$$DisplayCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisplayCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$Display>
    implements _$$DisplayCopyWith<$Res> {
  __$$DisplayCopyWithImpl(_$Display _value, $Res Function(_$Display) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Display implements Display {
  const _$Display();

  @override
  String toString() {
    return 'SignUpState.display()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Display);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() display,
    required TResult Function() valid,
  }) {
    return display();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? display,
    TResult? Function()? valid,
  }) {
    return display?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? display,
    TResult Function()? valid,
    required TResult orElse(),
  }) {
    if (display != null) {
      return display();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Display value) display,
    required TResult Function(Valid value) valid,
  }) {
    return display(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Display value)? display,
    TResult? Function(Valid value)? valid,
  }) {
    return display?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Display value)? display,
    TResult Function(Valid value)? valid,
    required TResult orElse(),
  }) {
    if (display != null) {
      return display(this);
    }
    return orElse();
  }
}

abstract class Display implements SignUpState {
  const factory Display() = _$Display;
}

/// @nodoc
abstract class _$$ValidCopyWith<$Res> {
  factory _$$ValidCopyWith(_$Valid value, $Res Function(_$Valid) then) =
      __$$ValidCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$Valid>
    implements _$$ValidCopyWith<$Res> {
  __$$ValidCopyWithImpl(_$Valid _value, $Res Function(_$Valid) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Valid implements Valid {
  const _$Valid();

  @override
  String toString() {
    return 'SignUpState.valid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Valid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() display,
    required TResult Function() valid,
  }) {
    return valid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? display,
    TResult? Function()? valid,
  }) {
    return valid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? display,
    TResult Function()? valid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Display value) display,
    required TResult Function(Valid value) valid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Display value)? display,
    TResult? Function(Valid value)? valid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Display value)? display,
    TResult Function(Valid value)? valid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class Valid implements SignUpState {
  const factory Valid() = _$Valid;
}
