import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:krypton/core/app_vm.dart';
import 'package:krypton/features/wallet/views/wallet_vm.dart';
import 'package:krypton/features/wallet/widgets/profile_card.dart';

import '../../../utils/strings.dart';
import '../widgets/animated_card_swiper.dart';
import '../widgets/bottom_sheet.dart';
import '../widgets/token_tile.dart';

class WalletView extends ConsumerWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final walletViewState = ref.watch(walletViewProvider);
    final appState = ref.watch(appProvider);

    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: appState.maybeWhen(
              orElse: () => Container(),
              data: (user, _, __) => ProfileCard(
                balance: user.balance,
                name: user.name,
                avatar: user.avatar,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: walletViewState.maybeMap(
              orElse: () => Container(),
              data: (value) {
                if (value.carouselCards.isEmpty) return const SizedBox();

                return AnimatedCardSwiper(
                  imageUrls: value.carouselCards,
                );
              }),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.black,
            padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Tokens',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                TextButton.icon(
                  onPressed: () {
                    WalletViewBottomSheet.showSortSheet(
                      context,
                      ref: ref,
                      onTap: (sort) => ref
                          .read(walletViewProvider.notifier)
                          .changeSortOrder(sort),
                    );
                  },
                  icon: SvgPicture.asset(ImagePaths.arrows, height: 14),
                  label: Text(
                    'Sort By',
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        )
      ],
      body: walletViewState.maybeMap(
        orElse: () => Container(),
        data: (value) => Container(
          color: Colors.black,
          child: ListView.separated(
            separatorBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Divider(
                thickness: 2,
                height: 2,
              ),
            ),
            itemCount: value.tokens.length,
            itemBuilder: (context, index) => TokenTile(
              iconUrl: value.tokens[index].iconUrl,
              balance: value.tokens[index].balance,
              currentPrice: value.tokens[index].currentPrice,
              name: value.tokens[index].name,
              symbol: value.tokens[index].symbol,
            ),
          ),
        ),
      ),
    );
  }
}
