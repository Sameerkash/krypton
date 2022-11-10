// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_vm_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Loading _$$_LoadingFromJson(Map<String, dynamic> json) => _$_Loading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_LoadingToJson(_$_Loading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
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

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'carouselCards': instance.carouselCards,
      'tokens': instance.tokens,
      'runtimeType': instance.$type,
    };
