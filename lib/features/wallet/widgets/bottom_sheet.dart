import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:krypton/features/wallet/widgets/sort_text_container.dart';

import '../models/token.dart';
import '../views/wallet_vm.dart';

class WalletViewBottomSheet {
  static Future<dynamic> showSortSheet(BuildContext context,
      {required WidgetRef ref, required Function(SortOrder sort) onTap}) {
    return showModalBottomSheet(
      barrierColor: Colors.black.withOpacity(0.5),
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        final walletState = ref.watch(walletViewProvider);

        final items =
            walletState.mapOrNull(data: ((value) => value.sortItemOptions));
        final activeSort =
            walletState.mapOrNull(data: ((value) => value.sortBy)) ??
                SortOrder.desc;

        return Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
            ),
            color: Theme.of(context).backgroundColor,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 6,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sort By',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Text(
                        'Done',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              const Divider(
                color: Colors.white,
                height: 1,
              ),
              if (items != null)
                ...items
                    .map(
                      (e) => GestureDetector(
                        onTap: () {
                          onTap(e.sort);
                          Navigator.of(context).pop();
                        },
                        child: SortTextContainer(
                          label: e.text,
                          isActive: e.sort == activeSort,
                        ),
                      ),
                    )
                    .toList(),
              const SizedBox(
                height: 28,
              ),
            ],
          ),
        );
      },
    );
  }
}
