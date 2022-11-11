import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:krypton/core/app_vm.dart';
import 'package:krypton/features/wallet/views/wallet_vm.dart';
import 'package:krypton/features/wallet/widgets/profile_card.dart';

import '../../../utils/extensions.dart';
import '../../../utils/strings.dart';
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
                    final items = walletViewState.mapOrNull(
                        data: ((value) => value.sortItemOptions));
                    final activeSort = walletViewState.mapOrNull(
                        data: ((value) => value.sortBy));

                    WalletViewBottomSheet.showSortSheet(
                      context,
                      items,
                      activeSort: activeSort,
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

class AnimatedCardSwiper extends ConsumerStatefulWidget {
  final List<String> imageUrls;
  const AnimatedCardSwiper({
    Key? key,
    required this.imageUrls,
  }) : super(key: key);

  @override
  ConsumerState<AnimatedCardSwiper> createState() => _AnimatedCardSwiperState();
}

class _AnimatedCardSwiperState extends ConsumerState<AnimatedCardSwiper>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final offset = context.globalPaintBounds;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 150,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 80,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
          child: Container(
            height: 150,
            child: LayoutBuilder(
              builder: (context, constrains) {
                final height = constrains.maxHeight;
                final width = constrains.maxWidth;
                return Stack(
                  alignment: Alignment.centerRight,
                  clipBehavior: Clip.none,
                  children: widget.imageUrls
                      .asMap()
                      .entries
                      .map(
                        (e) => Positioned(
                          bottom: (14 * e.key).toDouble(),
                          child: AnimatedStackCard(
                            imageUrl: e.value,
                            index: e.key,
                            height: height,
                            width: width,
                            currentOffset: offset,
                          ),
                        ),
                      )
                      .toList(),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}

class AnimatedStackCard extends ConsumerStatefulWidget {
  final String imageUrl;
  final int index;
  final double height;
  final double width;
  final Offset? currentOffset;

  const AnimatedStackCard({
    Key? key,
    required this.imageUrl,
    required this.index,
    required this.height,
    required this.width,
    this.currentOffset,
  }) : super(key: key);

  @override
  ConsumerState<AnimatedStackCard> createState() => _AnimatedStackCardState();
}

class _AnimatedStackCardState extends ConsumerState<AnimatedStackCard>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  GlobalKey key = GlobalKey();

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    // animation = Tween<Offset>(
    // )

    animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.currentOffset);
    return
        // SlideTransition(
        // position: ,
        // key: key,
        // animation: animationController,
        // builder: (context, child) => Transform.translate(
        // offset: Offset.zero,
        // offset: widget.currentOffset == null
        // ? Offset.zero
        // : Offset(
        // widget.currentOffset!.dx,
        // widget.currentOffset!.dy * animationController.value,
        // ),
        // child:
        GestureDetector(
      onVerticalDragCancel: () {},
      onVerticalDragEnd: (details) {
        ref
            .read(walletViewProvider.notifier)
            .onRemoveCarouselCard(widget.imageUrl);
      },
      onVerticalDragStart: (details) {},
      child: Image.network(
        widget.imageUrl,
        width: widget.width - (10 * widget.index + 1),
        height: widget.height,
      ),
      // ),
      // ),
    );
  }
}
