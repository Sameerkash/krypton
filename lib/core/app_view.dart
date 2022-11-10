import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:krypton/core/app_vm.dart';
import 'package:krypton/core/widgets/bottom_bar_item.dart';
import 'package:krypton/utils/strings.dart';

import '../features/wallet/views/wallet_view.dart';
import '../utils/colors.dart';

class AppView extends ConsumerStatefulWidget {
  const AppView({super.key});

  @override
  ConsumerState<AppView> createState() => _AppViewState();
}

class _AppViewState extends ConsumerState<AppView> {
  final List<Widget> pages = [
    const WalletView(),
    const Center(child: Text('Nothing to show')),
    const Center(child: Text('Nothing to show')),
    const Center(child: Text('Nothing to show')),
  ];

  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  void onPageChange(int index) {
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    final appState = ref.watch(appProvider);

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          children: pages,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).backgroundColor,
        onPressed: () {},
        elevation: 0,
        child: Container(
          padding: const EdgeInsets.all(2),
          decoration: const BoxDecoration(
            color: Colors.yellow,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(ImagePaths.arrows),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: appState.maybeMap(
        orElse: () => Container(),
        loading: (_) => Container(
          height: 50,
          color: Colors.grey,
        ),
        data: (value) => BottomAppBar(
          elevation: 2,
          color: Theme.of(context).bottomAppBarColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: value.bottomTabs
                  .asMap()
                  .entries
                  .map(
                    (e) => BottomBarItem(
                      label: e.value.label,
                      path: e.value.icon,
                      onTap: () {},
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
