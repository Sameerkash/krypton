import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors.dart';
import '../../utils/strings.dart';

class BottomBarItem extends StatelessWidget {
  final String path;
  final String label;
  final VoidCallback onTap;
  const BottomBarItem({
    Key? key,
    required this.path,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 66,
        color: AppColors.primary,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              path,
              color: Colors.white,
            ),
            Text(
              label,
              style: Theme.of(context).textTheme.caption,
            )
          ],
        ),
      ),
    );
  }
}
