import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.g.dart';
part 'token.freezed.dart';

enum SortOrder {
  @JsonValue('asc')
  asc,
  @JsonValue('desc')
  desc
}

@freezed
class TokenModel with _$TokenModel {
  const factory TokenModel({
    required final String name,
    required final String symbol,
    required final int balance,
    required final String iconUrl,
    required final int currentPrice,
  }) = _TokenModel;

  factory TokenModel.fromJson(Map<String, dynamic> json) =>
      _$TokenModelFromJson(json);
}

@freezed
class SortItemOptions with _$SortItemOptions {
  const factory SortItemOptions(
    final String text,
    final SortOrder sort,
  ) = _SortItemOptions;

  factory SortItemOptions.fromJson(Map<String, dynamic> json) =>
      _$SortItemOptionsFromJson(json);
}
