// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenModel _$$_TokenModelFromJson(Map<String, dynamic> json) =>
    _$_TokenModel(
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      balance: json['balance'] as int,
      iconUrl: json['iconUrl'] as String,
      currentPrice: json['currentPrice'] as int,
    );

Map<String, dynamic> _$$_TokenModelToJson(_$_TokenModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'symbol': instance.symbol,
      'balance': instance.balance,
      'iconUrl': instance.iconUrl,
      'currentPrice': instance.currentPrice,
    };

_$_SortItemOptions _$$_SortItemOptionsFromJson(Map<String, dynamic> json) =>
    _$_SortItemOptions(
      json['text'] as String,
      $enumDecode(_$SortOrderEnumMap, json['sort']),
    );

Map<String, dynamic> _$$_SortItemOptionsToJson(_$_SortItemOptions instance) =>
    <String, dynamic>{
      'text': instance.text,
      'sort': _$SortOrderEnumMap[instance.sort]!,
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};
