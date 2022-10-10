import 'package:freezed_annotation/freezed_annotation.dart';

 
part 'toto.freezed.dart';
part 'toto.g.dart';

/// {@template toto}
/// Toto description
/// {@endtemplate}
@freezed
class Toto with _$Toto {
  /// {@macro toto}
  const factory Toto({ 
    required int id,
    required String firstname,
    required int age,
  }) = _Toto;
  
    /// Creates a Toto from Json map
  factory Toto.fromJson(Map<String, dynamic> data) => _$TotoFromJson(data);
}
