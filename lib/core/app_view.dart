import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:krypton/utils/strings.dart';

import '../features/wallet/views/wallet_view.dart';
import '../utils/colors.dart';

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
      body: PageView(
        controller: _pageController,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onPageChange,
        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon: SvgPicture.asset(
              ImagePaths.wallet,
              color: Colors.white,
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              color: Colors.white,
              ImagePaths.gallery,
            ),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              ImagePaths.star,
              color: Colors.white,
            ),
            label: 'Star',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              ImagePaths.settings,
              color: Colors.white,
            ),
            label: 'Settings',
          )
        ],
      ),
    );
  }
}
