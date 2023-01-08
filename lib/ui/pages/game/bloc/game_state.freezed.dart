// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ListQuestions questions) loader,
    required TResult Function(String message) error,
    required TResult Function(String answer) answerSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(Question q) currentQuestion,
    required TResult Function() endGame,
    required TResult Function() alreadyPlayed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ListQuestions questions)? loader,
    TResult? Function(String message)? error,
    TResult? Function(String answer)? answerSelected,
    TResult? Function()? goodAnswer,
    TResult? Function()? wrongAnswer,
    TResult? Function(Question q)? currentQuestion,
    TResult? Function()? endGame,
    TResult? Function()? alreadyPlayed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
    TResult Function()? endGame,
    TResult Function()? alreadyPlayed,
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
    required TResult Function(EndGame value) endGame,
    required TResult Function(AlreadyPlayed value) alreadyPlayed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loader,
    TResult? Function(Error value)? error,
    TResult? Function(AnswerSelected value)? answerSelected,
    TResult? Function(GoodAnswer value)? goodAnswer,
    TResult? Function(WrongAnswer value)? wrongAnswer,
    TResult? Function(currentQuestion value)? currentQuestion,
    TResult? Function(EndGame value)? endGame,
    TResult? Function(AlreadyPlayed value)? alreadyPlayed,
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
    TResult Function(EndGame value)? endGame,
    TResult Function(AlreadyPlayed value)? alreadyPlayed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'GameState.loading()';
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
    required TResult Function(ListQuestions questions) loader,
    required TResult Function(String message) error,
    required TResult Function(String answer) answerSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(Question q) currentQuestion,
    required TResult Function() endGame,
    required TResult Function() alreadyPlayed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ListQuestions questions)? loader,
    TResult? Function(String message)? error,
    TResult? Function(String answer)? answerSelected,
    TResult? Function()? goodAnswer,
    TResult? Function()? wrongAnswer,
    TResult? Function(Question q)? currentQuestion,
    TResult? Function()? endGame,
    TResult? Function()? alreadyPlayed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
    TResult Function()? endGame,
    TResult Function()? alreadyPlayed,
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
    required TResult Function(EndGame value) endGame,
    required TResult Function(AlreadyPlayed value) alreadyPlayed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loader,
    TResult? Function(Error value)? error,
    TResult? Function(AnswerSelected value)? answerSelected,
    TResult? Function(GoodAnswer value)? goodAnswer,
    TResult? Function(WrongAnswer value)? wrongAnswer,
    TResult? Function(currentQuestion value)? currentQuestion,
    TResult? Function(EndGame value)? endGame,
    TResult? Function(AlreadyPlayed value)? alreadyPlayed,
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
    TResult Function(EndGame value)? endGame,
    TResult Function(AlreadyPlayed value)? alreadyPlayed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements GameState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({ListQuestions questions});

  $ListQuestionsCopyWith<$Res> get questions;
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$Loaded>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
  }) {
    return _then(_$Loaded(
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as ListQuestions,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ListQuestionsCopyWith<$Res> get questions {
    return $ListQuestionsCopyWith<$Res>(_value.questions, (value) {
      return _then(_value.copyWith(questions: value));
    });
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded({required this.questions});

  @override
  final ListQuestions questions;

  @override
  String toString() {
    return 'GameState.loader(questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded &&
            (identical(other.questions, questions) ||
                other.questions == questions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      __$$LoadedCopyWithImpl<_$Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ListQuestions questions) loader,
    required TResult Function(String message) error,
    required TResult Function(String answer) answerSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(Question q) currentQuestion,
    required TResult Function() endGame,
    required TResult Function() alreadyPlayed,
  }) {
    return loader(questions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ListQuestions questions)? loader,
    TResult? Function(String message)? error,
    TResult? Function(String answer)? answerSelected,
    TResult? Function()? goodAnswer,
    TResult? Function()? wrongAnswer,
    TResult? Function(Question q)? currentQuestion,
    TResult? Function()? endGame,
    TResult? Function()? alreadyPlayed,
  }) {
    return loader?.call(questions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
    TResult Function()? endGame,
    TResult Function()? alreadyPlayed,
    required TResult orElse(),
  }) {
    if (loader != null) {
      return loader(questions);
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
    required TResult Function(EndGame value) endGame,
    required TResult Function(AlreadyPlayed value) alreadyPlayed,
  }) {
    return loader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loader,
    TResult? Function(Error value)? error,
    TResult? Function(AnswerSelected value)? answerSelected,
    TResult? Function(GoodAnswer value)? goodAnswer,
    TResult? Function(WrongAnswer value)? wrongAnswer,
    TResult? Function(currentQuestion value)? currentQuestion,
    TResult? Function(EndGame value)? endGame,
    TResult? Function(AlreadyPlayed value)? alreadyPlayed,
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
    TResult Function(EndGame value)? endGame,
    TResult Function(AlreadyPlayed value)? alreadyPlayed,
    required TResult orElse(),
  }) {
    if (loader != null) {
      return loader(this);
    }
    return orElse();
  }
}

abstract class Loaded implements GameState {
  const factory Loaded({required final ListQuestions questions}) = _$Loaded;

  ListQuestions get questions;
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$Error(
      null == message
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
    return 'GameState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ListQuestions questions) loader,
    required TResult Function(String message) error,
    required TResult Function(String answer) answerSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(Question q) currentQuestion,
    required TResult Function() endGame,
    required TResult Function() alreadyPlayed,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ListQuestions questions)? loader,
    TResult? Function(String message)? error,
    TResult? Function(String answer)? answerSelected,
    TResult? Function()? goodAnswer,
    TResult? Function()? wrongAnswer,
    TResult? Function(Question q)? currentQuestion,
    TResult? Function()? endGame,
    TResult? Function()? alreadyPlayed,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
    TResult Function()? endGame,
    TResult Function()? alreadyPlayed,
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
    required TResult Function(EndGame value) endGame,
    required TResult Function(AlreadyPlayed value) alreadyPlayed,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loader,
    TResult? Function(Error value)? error,
    TResult? Function(AnswerSelected value)? answerSelected,
    TResult? Function(GoodAnswer value)? goodAnswer,
    TResult? Function(WrongAnswer value)? wrongAnswer,
    TResult? Function(currentQuestion value)? currentQuestion,
    TResult? Function(EndGame value)? endGame,
    TResult? Function(AlreadyPlayed value)? alreadyPlayed,
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
    TResult Function(EndGame value)? endGame,
    TResult Function(AlreadyPlayed value)? alreadyPlayed,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements GameState {
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
  @useResult
  $Res call({String answer});
}

/// @nodoc
class __$$AnswerSelectedCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$AnswerSelected>
    implements _$$AnswerSelectedCopyWith<$Res> {
  __$$AnswerSelectedCopyWithImpl(
      _$AnswerSelected _value, $Res Function(_$AnswerSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
  }) {
    return _then(_$AnswerSelected(
      null == answer
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
    return 'GameState.answerSelected(answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerSelected &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerSelectedCopyWith<_$AnswerSelected> get copyWith =>
      __$$AnswerSelectedCopyWithImpl<_$AnswerSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ListQuestions questions) loader,
    required TResult Function(String message) error,
    required TResult Function(String answer) answerSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(Question q) currentQuestion,
    required TResult Function() endGame,
    required TResult Function() alreadyPlayed,
  }) {
    return answerSelected(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ListQuestions questions)? loader,
    TResult? Function(String message)? error,
    TResult? Function(String answer)? answerSelected,
    TResult? Function()? goodAnswer,
    TResult? Function()? wrongAnswer,
    TResult? Function(Question q)? currentQuestion,
    TResult? Function()? endGame,
    TResult? Function()? alreadyPlayed,
  }) {
    return answerSelected?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
    TResult Function()? endGame,
    TResult Function()? alreadyPlayed,
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
    required TResult Function(EndGame value) endGame,
    required TResult Function(AlreadyPlayed value) alreadyPlayed,
  }) {
    return answerSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loader,
    TResult? Function(Error value)? error,
    TResult? Function(AnswerSelected value)? answerSelected,
    TResult? Function(GoodAnswer value)? goodAnswer,
    TResult? Function(WrongAnswer value)? wrongAnswer,
    TResult? Function(currentQuestion value)? currentQuestion,
    TResult? Function(EndGame value)? endGame,
    TResult? Function(AlreadyPlayed value)? alreadyPlayed,
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
    TResult Function(EndGame value)? endGame,
    TResult Function(AlreadyPlayed value)? alreadyPlayed,
    required TResult orElse(),
  }) {
    if (answerSelected != null) {
      return answerSelected(this);
    }
    return orElse();
  }
}

abstract class AnswerSelected implements GameState {
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
class __$$GoodAnswerCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GoodAnswer>
    implements _$$GoodAnswerCopyWith<$Res> {
  __$$GoodAnswerCopyWithImpl(
      _$GoodAnswer _value, $Res Function(_$GoodAnswer) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoodAnswer implements GoodAnswer {
  const _$GoodAnswer();

  @override
  String toString() {
    return 'GameState.goodAnswer()';
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
    required TResult Function(ListQuestions questions) loader,
    required TResult Function(String message) error,
    required TResult Function(String answer) answerSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(Question q) currentQuestion,
    required TResult Function() endGame,
    required TResult Function() alreadyPlayed,
  }) {
    return goodAnswer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ListQuestions questions)? loader,
    TResult? Function(String message)? error,
    TResult? Function(String answer)? answerSelected,
    TResult? Function()? goodAnswer,
    TResult? Function()? wrongAnswer,
    TResult? Function(Question q)? currentQuestion,
    TResult? Function()? endGame,
    TResult? Function()? alreadyPlayed,
  }) {
    return goodAnswer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
    TResult Function()? endGame,
    TResult Function()? alreadyPlayed,
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
    required TResult Function(EndGame value) endGame,
    required TResult Function(AlreadyPlayed value) alreadyPlayed,
  }) {
    return goodAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loader,
    TResult? Function(Error value)? error,
    TResult? Function(AnswerSelected value)? answerSelected,
    TResult? Function(GoodAnswer value)? goodAnswer,
    TResult? Function(WrongAnswer value)? wrongAnswer,
    TResult? Function(currentQuestion value)? currentQuestion,
    TResult? Function(EndGame value)? endGame,
    TResult? Function(AlreadyPlayed value)? alreadyPlayed,
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
    TResult Function(EndGame value)? endGame,
    TResult Function(AlreadyPlayed value)? alreadyPlayed,
    required TResult orElse(),
  }) {
    if (goodAnswer != null) {
      return goodAnswer(this);
    }
    return orElse();
  }
}

abstract class GoodAnswer implements GameState {
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
    extends _$GameStateCopyWithImpl<$Res, _$WrongAnswer>
    implements _$$WrongAnswerCopyWith<$Res> {
  __$$WrongAnswerCopyWithImpl(
      _$WrongAnswer _value, $Res Function(_$WrongAnswer) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WrongAnswer implements WrongAnswer {
  const _$WrongAnswer();

  @override
  String toString() {
    return 'GameState.wrongAnswer()';
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
    required TResult Function(ListQuestions questions) loader,
    required TResult Function(String message) error,
    required TResult Function(String answer) answerSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(Question q) currentQuestion,
    required TResult Function() endGame,
    required TResult Function() alreadyPlayed,
  }) {
    return wrongAnswer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ListQuestions questions)? loader,
    TResult? Function(String message)? error,
    TResult? Function(String answer)? answerSelected,
    TResult? Function()? goodAnswer,
    TResult? Function()? wrongAnswer,
    TResult? Function(Question q)? currentQuestion,
    TResult? Function()? endGame,
    TResult? Function()? alreadyPlayed,
  }) {
    return wrongAnswer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
    TResult Function()? endGame,
    TResult Function()? alreadyPlayed,
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
    required TResult Function(EndGame value) endGame,
    required TResult Function(AlreadyPlayed value) alreadyPlayed,
  }) {
    return wrongAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loader,
    TResult? Function(Error value)? error,
    TResult? Function(AnswerSelected value)? answerSelected,
    TResult? Function(GoodAnswer value)? goodAnswer,
    TResult? Function(WrongAnswer value)? wrongAnswer,
    TResult? Function(currentQuestion value)? currentQuestion,
    TResult? Function(EndGame value)? endGame,
    TResult? Function(AlreadyPlayed value)? alreadyPlayed,
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
    TResult Function(EndGame value)? endGame,
    TResult Function(AlreadyPlayed value)? alreadyPlayed,
    required TResult orElse(),
  }) {
    if (wrongAnswer != null) {
      return wrongAnswer(this);
    }
    return orElse();
  }
}

abstract class WrongAnswer implements GameState {
  const factory WrongAnswer() = _$WrongAnswer;
}

/// @nodoc
abstract class _$$currentQuestionCopyWith<$Res> {
  factory _$$currentQuestionCopyWith(
          _$currentQuestion value, $Res Function(_$currentQuestion) then) =
      __$$currentQuestionCopyWithImpl<$Res>;
  @useResult
  $Res call({Question q});

  $QuestionCopyWith<$Res> get q;
}

/// @nodoc
class __$$currentQuestionCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$currentQuestion>
    implements _$$currentQuestionCopyWith<$Res> {
  __$$currentQuestionCopyWithImpl(
      _$currentQuestion _value, $Res Function(_$currentQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
  }) {
    return _then(_$currentQuestion(
      null == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as Question,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
    return 'GameState.currentQuestion(q: $q)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$currentQuestion &&
            (identical(other.q, q) || other.q == q));
  }

  @override
  int get hashCode => Object.hash(runtimeType, q);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$currentQuestionCopyWith<_$currentQuestion> get copyWith =>
      __$$currentQuestionCopyWithImpl<_$currentQuestion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ListQuestions questions) loader,
    required TResult Function(String message) error,
    required TResult Function(String answer) answerSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(Question q) currentQuestion,
    required TResult Function() endGame,
    required TResult Function() alreadyPlayed,
  }) {
    return currentQuestion(q);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ListQuestions questions)? loader,
    TResult? Function(String message)? error,
    TResult? Function(String answer)? answerSelected,
    TResult? Function()? goodAnswer,
    TResult? Function()? wrongAnswer,
    TResult? Function(Question q)? currentQuestion,
    TResult? Function()? endGame,
    TResult? Function()? alreadyPlayed,
  }) {
    return currentQuestion?.call(q);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
    TResult Function()? endGame,
    TResult Function()? alreadyPlayed,
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
    required TResult Function(EndGame value) endGame,
    required TResult Function(AlreadyPlayed value) alreadyPlayed,
  }) {
    return currentQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loader,
    TResult? Function(Error value)? error,
    TResult? Function(AnswerSelected value)? answerSelected,
    TResult? Function(GoodAnswer value)? goodAnswer,
    TResult? Function(WrongAnswer value)? wrongAnswer,
    TResult? Function(currentQuestion value)? currentQuestion,
    TResult? Function(EndGame value)? endGame,
    TResult? Function(AlreadyPlayed value)? alreadyPlayed,
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
    TResult Function(EndGame value)? endGame,
    TResult Function(AlreadyPlayed value)? alreadyPlayed,
    required TResult orElse(),
  }) {
    if (currentQuestion != null) {
      return currentQuestion(this);
    }
    return orElse();
  }
}

abstract class currentQuestion implements GameState {
  const factory currentQuestion(final Question q) = _$currentQuestion;

  Question get q;
  @JsonKey(ignore: true)
  _$$currentQuestionCopyWith<_$currentQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EndGameCopyWith<$Res> {
  factory _$$EndGameCopyWith(_$EndGame value, $Res Function(_$EndGame) then) =
      __$$EndGameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EndGameCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$EndGame>
    implements _$$EndGameCopyWith<$Res> {
  __$$EndGameCopyWithImpl(_$EndGame _value, $Res Function(_$EndGame) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EndGame implements EndGame {
  const _$EndGame();

  @override
  String toString() {
    return 'GameState.endGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EndGame);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ListQuestions questions) loader,
    required TResult Function(String message) error,
    required TResult Function(String answer) answerSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(Question q) currentQuestion,
    required TResult Function() endGame,
    required TResult Function() alreadyPlayed,
  }) {
    return endGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ListQuestions questions)? loader,
    TResult? Function(String message)? error,
    TResult? Function(String answer)? answerSelected,
    TResult? Function()? goodAnswer,
    TResult? Function()? wrongAnswer,
    TResult? Function(Question q)? currentQuestion,
    TResult? Function()? endGame,
    TResult? Function()? alreadyPlayed,
  }) {
    return endGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
    TResult Function()? endGame,
    TResult Function()? alreadyPlayed,
    required TResult orElse(),
  }) {
    if (endGame != null) {
      return endGame();
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
    required TResult Function(EndGame value) endGame,
    required TResult Function(AlreadyPlayed value) alreadyPlayed,
  }) {
    return endGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loader,
    TResult? Function(Error value)? error,
    TResult? Function(AnswerSelected value)? answerSelected,
    TResult? Function(GoodAnswer value)? goodAnswer,
    TResult? Function(WrongAnswer value)? wrongAnswer,
    TResult? Function(currentQuestion value)? currentQuestion,
    TResult? Function(EndGame value)? endGame,
    TResult? Function(AlreadyPlayed value)? alreadyPlayed,
  }) {
    return endGame?.call(this);
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
    TResult Function(EndGame value)? endGame,
    TResult Function(AlreadyPlayed value)? alreadyPlayed,
    required TResult orElse(),
  }) {
    if (endGame != null) {
      return endGame(this);
    }
    return orElse();
  }
}

abstract class EndGame implements GameState {
  const factory EndGame() = _$EndGame;
}

/// @nodoc
abstract class _$$AlreadyPlayedCopyWith<$Res> {
  factory _$$AlreadyPlayedCopyWith(
          _$AlreadyPlayed value, $Res Function(_$AlreadyPlayed) then) =
      __$$AlreadyPlayedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AlreadyPlayedCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$AlreadyPlayed>
    implements _$$AlreadyPlayedCopyWith<$Res> {
  __$$AlreadyPlayedCopyWithImpl(
      _$AlreadyPlayed _value, $Res Function(_$AlreadyPlayed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AlreadyPlayed implements AlreadyPlayed {
  const _$AlreadyPlayed();

  @override
  String toString() {
    return 'GameState.alreadyPlayed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AlreadyPlayed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ListQuestions questions) loader,
    required TResult Function(String message) error,
    required TResult Function(String answer) answerSelected,
    required TResult Function() goodAnswer,
    required TResult Function() wrongAnswer,
    required TResult Function(Question q) currentQuestion,
    required TResult Function() endGame,
    required TResult Function() alreadyPlayed,
  }) {
    return alreadyPlayed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ListQuestions questions)? loader,
    TResult? Function(String message)? error,
    TResult? Function(String answer)? answerSelected,
    TResult? Function()? goodAnswer,
    TResult? Function()? wrongAnswer,
    TResult? Function(Question q)? currentQuestion,
    TResult? Function()? endGame,
    TResult? Function()? alreadyPlayed,
  }) {
    return alreadyPlayed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ListQuestions questions)? loader,
    TResult Function(String message)? error,
    TResult Function(String answer)? answerSelected,
    TResult Function()? goodAnswer,
    TResult Function()? wrongAnswer,
    TResult Function(Question q)? currentQuestion,
    TResult Function()? endGame,
    TResult Function()? alreadyPlayed,
    required TResult orElse(),
  }) {
    if (alreadyPlayed != null) {
      return alreadyPlayed();
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
    required TResult Function(EndGame value) endGame,
    required TResult Function(AlreadyPlayed value) alreadyPlayed,
  }) {
    return alreadyPlayed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loader,
    TResult? Function(Error value)? error,
    TResult? Function(AnswerSelected value)? answerSelected,
    TResult? Function(GoodAnswer value)? goodAnswer,
    TResult? Function(WrongAnswer value)? wrongAnswer,
    TResult? Function(currentQuestion value)? currentQuestion,
    TResult? Function(EndGame value)? endGame,
    TResult? Function(AlreadyPlayed value)? alreadyPlayed,
  }) {
    return alreadyPlayed?.call(this);
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
    TResult Function(EndGame value)? endGame,
    TResult Function(AlreadyPlayed value)? alreadyPlayed,
    required TResult orElse(),
  }) {
    if (alreadyPlayed != null) {
      return alreadyPlayed(this);
    }
    return orElse();
  }
}

abstract class AlreadyPlayed implements GameState {
  const factory AlreadyPlayed() = _$AlreadyPlayed;
}
