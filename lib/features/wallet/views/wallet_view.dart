import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:krypton/features/wallet/widgets/profile_card.dart';

class WalletView extends ConsumerWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(24),
          child: ProfileCard(),

          
        ),
      ],
    );
  }
}
