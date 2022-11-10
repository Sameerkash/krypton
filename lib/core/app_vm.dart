import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:krypton/core/models/bottom_tab_item.dart';
import 'package:krypton/core/models/user.dart';

part 'app_vm.freezed.dart';

@freezed
class AppViewModel with _$AppViewModel {
  const factory AppViewModel.loading() = _Loading;
  const factory AppViewModel.error() = _Error;
  const factory AppViewModel.data({
    required final UserModel user,
    required final List<BottomTabItemModel> bottomTabs,
  }) = _Data;
}
