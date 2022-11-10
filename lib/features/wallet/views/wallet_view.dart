import 'package:flutter/material.dart';
import 'package:krypton/features/wallet/widgets/profile_card.dart';

class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
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
