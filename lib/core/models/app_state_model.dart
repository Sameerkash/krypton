import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:krypton/core/models/bottom_tab_item.dart';
import 'package:krypton/core/models/user.dart';
part 'app_state_model.g.dart';
part 'app_state_model.freezed.dart';

@freezed
class AppStateModel with _$AppStateModel {
  const factory AppStateModel.loading() = AppStateModelLoading;
  const factory AppStateModel.error() = AppStateModelError;
  const factory AppStateModel.data({
    required final UserModel user,
    required final List<BottomTabItemModel> bottomTabs,
    @Default(0) int index,
  }) = AppStateModelData;


  factory AppStateModel.fromJson(Map<String, dynamic> json) =>
      _$AppStateModelFromJson(json);
}