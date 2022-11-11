import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../views/wallet_vm.dart';

class AnimatedCardSwiper extends StatefulWidget {
  final List<String> imageUrls;
  const AnimatedCardSwiper({
    Key? key,
    required this.imageUrls,
  }) : super(key: key);

  @override
  State<AnimatedCardSwiper> createState() => _AnimatedCardSwiperState();
}

class _AnimatedCardSwiperState extends State<AnimatedCardSwiper> {
  @override
  Widget build(BuildContext context) {
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
          child: SizedBox(
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

  const AnimatedStackCard({
    Key? key,
    required this.imageUrl,
    required this.index,
    required this.height,
    required this.width,
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

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
    );
  }
}
