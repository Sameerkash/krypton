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
      currentPrice: json['currentPrice'] as int,
    );

Map<String, dynamic> _$$_TokenModelToJson(_$_TokenModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'symbol': instance.symbol,
      'balance': instance.balance,
      'currentPrice': instance.currentPrice,
    };
