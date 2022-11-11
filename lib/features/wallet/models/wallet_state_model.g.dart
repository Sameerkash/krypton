// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletStateModelLoading _$$WalletStateModelLoadingFromJson(
        Map<String, dynamic> json) =>
    _$WalletStateModelLoading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WalletStateModelLoadingToJson(
        _$WalletStateModelLoading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WalletStateModelData _$$WalletStateModelDataFromJson(
        Map<String, dynamic> json) =>
    _$WalletStateModelData(
      carouselCards: (json['carouselCards'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      tokens: (json['tokens'] as List<dynamic>?)
              ?.map((e) => TokenModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      sortItemOptions: (json['sortItemOptions'] as List<dynamic>?)
              ?.map((e) => SortItemOptions.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      sortBy: $enumDecodeNullable(_$SortOrderEnumMap, json['sortBy']) ??
          SortOrder.desc,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WalletStateModelDataToJson(
        _$WalletStateModelData instance) =>
    <String, dynamic>{
      'carouselCards': instance.carouselCards,
      'tokens': instance.tokens,
      'sortItemOptions': instance.sortItemOptions,
      'sortBy': _$SortOrderEnumMap[instance.sortBy]!,
      'runtimeType': instance.$type,
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
