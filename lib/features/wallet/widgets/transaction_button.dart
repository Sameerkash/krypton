import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionButton extends StatelessWidget {
  final String label;
  final String icon;
  final VoidCallback? onTap;
  const TransactionButton({
    Key? key,
    required this.label,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: SvgPicture.asset(icon),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}


