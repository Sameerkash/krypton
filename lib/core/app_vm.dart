import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'models/app_state_model.dart';

final appProvider = StateNotifierProvider<AppVM, AppStateModel>((ref) {
  return AppVM();
});

class AppVM extends StateNotifier<AppStateModel> {
  AppVM() : super(const AppStateModel.loading());

  Future<void> getAppData() async {
    final currentState = state;
    if (currentState is AppStateModelLoading) {
      String data = await rootBundle.loadString('assets/data.json');
      final jsonResult = json.decode(data);
      state = AppStateModel.fromJson(jsonResult);
    }
  }
}
