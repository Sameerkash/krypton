import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.g.dart';
part 'token.freezed.dart';

@freezed
class TokenModel with _$TokenModel {
  const factory TokenModel({
    required final String name,
    required final String symbol,
    required final int balance,
    required final int currentPrice,
  }) = _TokenModel;

  factory TokenModel.fromJson(Map<String, dynamic> json) =>
      _$TokenModelFromJson(json);
}
