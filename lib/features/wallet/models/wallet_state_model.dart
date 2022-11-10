import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:krypton/features/wallet/models/token.dart';

part 'wallet_state_model.g.dart';
part 'wallet_state_model.freezed.dart';

@freezed
class WalletStateModel with _$WalletStateModel {
  const factory WalletStateModel.loading() = WalletStateModelLoading;
  const factory WalletStateModel.data({
    @Default([]) final List<String> carouselCards,
    @Default([]) final List<TokenModel> tokens,
  }) = WalletStateModelData;

  factory WalletStateModel.fromJson(Map<String, dynamic> json) =>
      _$WalletStateModelFromJson(json);
}
