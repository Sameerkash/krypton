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
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WalletStateModelDataToJson(
        _$WalletStateModelData instance) =>
    <String, dynamic>{
      'carouselCards': instance.carouselCards,
      'tokens': instance.tokens,
      'runtimeType': instance.$type,
    };
