// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppStateModelLoading _$$AppStateModelLoadingFromJson(
        Map<String, dynamic> json) =>
    _$AppStateModelLoading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AppStateModelLoadingToJson(
        _$AppStateModelLoading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AppStateModelError _$$AppStateModelErrorFromJson(Map<String, dynamic> json) =>
    _$AppStateModelError(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AppStateModelErrorToJson(
        _$AppStateModelError instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AppStateModelData _$$AppStateModelDataFromJson(Map<String, dynamic> json) =>
    _$AppStateModelData(
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      bottomTabs: (json['bottomTabs'] as List<dynamic>)
          .map((e) => BottomTabItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AppStateModelDataToJson(_$AppStateModelData instance) =>
    <String, dynamic>{
      'user': instance.user,
      'bottomTabs': instance.bottomTabs,
      'runtimeType': instance.$type,
    };
