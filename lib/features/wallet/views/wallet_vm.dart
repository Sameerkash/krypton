import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:krypton/features/wallet/models/wallet_state_model.dart';

final walletViewProvider =
    StateNotifierProvider<WalletVM, WalletStateModel>((ref) {
  return WalletVM();
});

class WalletVM extends StateNotifier<WalletStateModel> {
  WalletVM() : super(const WalletStateModel.loading()) {
    getWalletViewData();
  }

  Future<void> getWalletViewData() async {
    final currentState = state;
    if (currentState is WalletStateModelLoading) {
      String data = await rootBundle.loadString('assets/data.json');
      final jsonResult = json.decode(data);
      state = WalletStateModel.fromJson({'runtimeType': 'data', ...jsonResult});
    }
  }
}
