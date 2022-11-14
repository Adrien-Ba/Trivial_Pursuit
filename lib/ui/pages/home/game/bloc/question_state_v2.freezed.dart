// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_state_v2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loader,
    required TResult Function(String message) error,
    required TResult Function(String answer) answerSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(Question q) currentQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loader,
    required TResult Function(Error value) error,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(GoodAnswer value) goodAnswer,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(currentQuestion value) currentQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loader,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(currentQuestion value)? currentQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loader,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(currentQuestion value)? currentQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionStateCopyWith<$Res> {
  factory $QuestionStateCopyWith(
          QuestionState value, $Res Function(QuestionState) then) =
      _$QuestionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionStateCopyWithImpl<$Res>
    implements $QuestionStateCopyWith<$Res> {
  _$QuestionStateCopyWithImpl(this._value, this._then);

  final QuestionState _value;
  // ignore: unused_field
  final $Res Function(QuestionState) _then;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$QuestionStateCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'QuestionState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loader,
    required TResult Function(String message) error,
    required TResult Function(String answer) answerSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(Question q) currentQuestion,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loader,
    required TResult Function(Error value) error,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(GoodAnswer value) goodAnswer,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(currentQuestion value) currentQuestion,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loader,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(currentQuestion value)? currentQuestion,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loader,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(currentQuestion value)? currentQuestion,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements QuestionState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res> extends _$QuestionStateCopyWithImpl<$Res>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, (v) => _then(v as _$Loaded));

  @override
  _$Loaded get _value => super._value as _$Loaded;
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded();

  @override
  String toString() {
    return 'QuestionState.loader()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loader,
    required TResult Function(String message) error,
    required TResult Function(String answer) answerSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(Question q) currentQuestion,
  }) {
    return loader();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
  }) {
    return loader?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
    required TResult orElse(),
  }) {
    if (loader != null) {
      return loader();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loader,
    required TResult Function(Error value) error,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(GoodAnswer value) goodAnswer,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(currentQuestion value) currentQuestion,
  }) {
    return loader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loader,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(currentQuestion value)? currentQuestion,
  }) {
    return loader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loader,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(currentQuestion value)? currentQuestion,
    required TResult orElse(),
  }) {
    if (loader != null) {
      return loader(this);
    }
    return orElse();
  }
}

abstract class Loaded implements QuestionState {
  const factory Loaded() = _$Loaded;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res> extends _$QuestionStateCopyWithImpl<$Res>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, (v) => _then(v as _$Error));

  @override
  _$Error get _value => super._value as _$Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'QuestionState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loader,
    required TResult Function(String message) error,
    required TResult Function(String answer) answerSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(Question q) currentQuestion,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loader,
    required TResult Function(Error value) error,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(GoodAnswer value) goodAnswer,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(currentQuestion value) currentQuestion,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loader,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(currentQuestion value)? currentQuestion,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loader,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(currentQuestion value)? currentQuestion,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements QuestionState {
  const factory Error(final String message) = _$Error;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnswerSelectedCopyWith<$Res> {
  factory _$$AnswerSelectedCopyWith(
          _$AnswerSelected value, $Res Function(_$AnswerSelected) then) =
      __$$AnswerSelectedCopyWithImpl<$Res>;
  $Res call({String answer});
}

/// @nodoc
class __$$AnswerSelectedCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res>
    implements _$$AnswerSelectedCopyWith<$Res> {
  __$$AnswerSelectedCopyWithImpl(
      _$AnswerSelected _value, $Res Function(_$AnswerSelected) _then)
      : super(_value, (v) => _then(v as _$AnswerSelected));

  @override
  _$AnswerSelected get _value => super._value as _$AnswerSelected;

  @override
  $Res call({
    Object? answer = freezed,
  }) {
    return _then(_$AnswerSelected(
      answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AnswerSelected implements AnswerSelected {
  const _$AnswerSelected(this.answer);

  @override
  final String answer;

  @override
  String toString() {
    return 'QuestionState.answerSelected(answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerSelected &&
            const DeepCollectionEquality().equals(other.answer, answer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(answer));

  @JsonKey(ignore: true)
  @override
  _$$AnswerSelectedCopyWith<_$AnswerSelected> get copyWith =>
      __$$AnswerSelectedCopyWithImpl<_$AnswerSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loader,
    required TResult Function(String message) error,
    required TResult Function(String answer) answerSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(Question q) currentQuestion,
  }) {
    return answerSelected(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
  }) {
    return answerSelected?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
    required TResult orElse(),
  }) {
    if (answerSelected != null) {
      return answerSelected(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loader,
    required TResult Function(Error value) error,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(GoodAnswer value) goodAnswer,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(currentQuestion value) currentQuestion,
  }) {
    return answerSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loader,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(currentQuestion value)? currentQuestion,
  }) {
    return answerSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loader,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(currentQuestion value)? currentQuestion,
    required TResult orElse(),
  }) {
    if (answerSelected != null) {
      return answerSelected(this);
    }
    return orElse();
  }
}

abstract class AnswerSelected implements QuestionState {
  const factory AnswerSelected(final String answer) = _$AnswerSelected;

  String get answer;
  @JsonKey(ignore: true)
  _$$AnswerSelectedCopyWith<_$AnswerSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoodAnswerCopyWith<$Res> {
  factory _$$GoodAnswerCopyWith(
          _$GoodAnswer value, $Res Function(_$GoodAnswer) then) =
      __$$GoodAnswerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoodAnswerCopyWithImpl<$Res> extends _$QuestionStateCopyWithImpl<$Res>
    implements _$$GoodAnswerCopyWith<$Res> {
  __$$GoodAnswerCopyWithImpl(
      _$GoodAnswer _value, $Res Function(_$GoodAnswer) _then)
      : super(_value, (v) => _then(v as _$GoodAnswer));

  @override
  _$GoodAnswer get _value => super._value as _$GoodAnswer;
}

/// @nodoc

class _$GoodAnswer implements GoodAnswer {
  const _$GoodAnswer();

  @override
  String toString() {
    return 'QuestionState.goodAnswer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoodAnswer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loader,
    required TResult Function(String message) error,
    required TResult Function(String answer) answerSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(Question q) currentQuestion,
  }) {
    return goodAnswer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
  }) {
    return goodAnswer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
    required TResult orElse(),
  }) {
    if (goodAnswer != null) {
      return goodAnswer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loader,
    required TResult Function(Error value) error,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(GoodAnswer value) goodAnswer,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(currentQuestion value) currentQuestion,
  }) {
    return goodAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loader,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(currentQuestion value)? currentQuestion,
  }) {
    return goodAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loader,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(currentQuestion value)? currentQuestion,
    required TResult orElse(),
  }) {
    if (goodAnswer != null) {
      return goodAnswer(this);
    }
    return orElse();
  }
}

abstract class GoodAnswer implements QuestionState {
  const factory GoodAnswer() = _$GoodAnswer;
}

/// @nodoc
abstract class _$$WrongAnswerCopyWith<$Res> {
  factory _$$WrongAnswerCopyWith(
          _$WrongAnswer value, $Res Function(_$WrongAnswer) then) =
      __$$WrongAnswerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WrongAnswerCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res>
    implements _$$WrongAnswerCopyWith<$Res> {
  __$$WrongAnswerCopyWithImpl(
      _$WrongAnswer _value, $Res Function(_$WrongAnswer) _then)
      : super(_value, (v) => _then(v as _$WrongAnswer));

  @override
  _$WrongAnswer get _value => super._value as _$WrongAnswer;
}

/// @nodoc

class _$WrongAnswer implements WrongAnswer {
  const _$WrongAnswer();

  @override
  String toString() {
    return 'QuestionState.wrongAnswer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WrongAnswer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loader,
    required TResult Function(String message) error,
    required TResult Function(String answer) answerSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(Question q) currentQuestion,
  }) {
    return wrongAnswer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
  }) {
    return wrongAnswer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
    required TResult orElse(),
  }) {
    if (wrongAnswer != null) {
      return wrongAnswer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loader,
    required TResult Function(Error value) error,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(GoodAnswer value) goodAnswer,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(currentQuestion value) currentQuestion,
  }) {
    return wrongAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loader,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(currentQuestion value)? currentQuestion,
  }) {
    return wrongAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loader,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(currentQuestion value)? currentQuestion,
    required TResult orElse(),
  }) {
    if (wrongAnswer != null) {
      return wrongAnswer(this);
    }
    return orElse();
  }
}

abstract class WrongAnswer implements QuestionState {
  const factory WrongAnswer() = _$WrongAnswer;
}

/// @nodoc
abstract class _$$currentQuestionCopyWith<$Res> {
  factory _$$currentQuestionCopyWith(
          _$currentQuestion value, $Res Function(_$currentQuestion) then) =
      __$$currentQuestionCopyWithImpl<$Res>;
  $Res call({Question q});

  $QuestionCopyWith<$Res> get q;
}

/// @nodoc
class __$$currentQuestionCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res>
    implements _$$currentQuestionCopyWith<$Res> {
  __$$currentQuestionCopyWithImpl(
      _$currentQuestion _value, $Res Function(_$currentQuestion) _then)
      : super(_value, (v) => _then(v as _$currentQuestion));

  @override
  _$currentQuestion get _value => super._value as _$currentQuestion;

  @override
  $Res call({
    Object? q = freezed,
  }) {
    return _then(_$currentQuestion(
      q == freezed
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as Question,
    ));
  }

  @override
  $QuestionCopyWith<$Res> get q {
    return $QuestionCopyWith<$Res>(_value.q, (value) {
      return _then(_value.copyWith(q: value));
    });
  }
}

/// @nodoc

class _$currentQuestion implements currentQuestion {
  const _$currentQuestion(this.q);

  @override
  final Question q;

  @override
  String toString() {
    return 'QuestionState.currentQuestion(q: $q)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$currentQuestion &&
            const DeepCollectionEquality().equals(other.q, q));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(q));

  @JsonKey(ignore: true)
  @override
  _$$currentQuestionCopyWith<_$currentQuestion> get copyWith =>
      __$$currentQuestionCopyWithImpl<_$currentQuestion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loader,
    required TResult Function(String message) error,
    required TResult Function(String answer) answerSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(Question q) currentQuestion,
  }) {
    return currentQuestion(q);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
  }) {
    return currentQuestion?.call(q);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
    required TResult orElse(),
  }) {
    if (currentQuestion != null) {
      return currentQuestion(q);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loader,
    required TResult Function(Error value) error,
    required TResult Function(AnswerSelected value) answerSelected,
    required TResult Function(GoodAnswer value) goodAnswer,
    required TResult Function(WrongAnswer value) wrongAnswer,
    required TResult Function(currentQuestion value) currentQuestion,
  }) {
    return currentQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loader,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(currentQuestion value)? currentQuestion,
  }) {
    return currentQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loader,
    TResult Function(Error value)? error,
    TResult Function(AnswerSelected value)? answerSelected,
    TResult Function(GoodAnswer value)? goodAnswer,
    TResult Function(WrongAnswer value)? wrongAnswer,
    TResult Function(currentQuestion value)? currentQuestion,
    required TResult orElse(),
  }) {
    if (currentQuestion != null) {
      return currentQuestion(this);
    }
    return orElse();
  }
}

abstract class currentQuestion implements QuestionState {
  const factory currentQuestion(final Question q) = _$currentQuestion;

  Question get q;
  @JsonKey(ignore: true)
  _$$currentQuestionCopyWith<_$currentQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}
