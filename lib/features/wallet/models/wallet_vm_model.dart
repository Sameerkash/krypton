import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:krypton/features/wallet/models/token.dart';

part 'wallet_vm_model.freezed.dart';
part 'wallet_vm_model.g.dart';

@freezed
class WalletVMModel with _$WalletVMModel {
  const factory WalletVMModel.loading() = _Loading;
  const factory WalletVMModel.data({
    @Default([]) final List<String> carouselCards,
    @Default([]) final List<TokenModel> tokens,
  }) = _Data;

  factory WalletVMModel.fromJson(Map<String, dynamic> json) =>
      _$WalletVMModelFromJson(json);
}
