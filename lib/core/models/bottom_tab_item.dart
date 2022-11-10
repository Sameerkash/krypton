import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_tab_item.freezed.dart';
part 'bottom_tab_item.g.dart';

@freezed
class BottomTabItemModel with _$BottomTabItemModel {
  const factory BottomTabItemModel({
    required final String label,
    required final String icon,
  }) = _BottomTabItemModel;

  factory BottomTabItemModel.fromJson(Map<String, dynamic> json) =>
      _$BottomTabItemModelFromJson(json);
}
