import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:krypton/utils/strings.dart';

import '../features/wallet/views/wallet_view.dart';
import '../utils/colors.dart';
import 'widgets/bottom_bar_item.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
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
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          children: pages,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 2,
        color: Theme.of(context).bottomAppBarColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 14),
          child: Row(
              // children:
              ),
        ),
      ),
    );
  }
}
