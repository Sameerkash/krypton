import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class BottomBarItem extends StatelessWidget {
  final String path;
  final String label;
  final Color color;
  final VoidCallback onTap;
  const BottomBarItem({
    Key? key,
    required this.path,
    required this.label,
    required this.onTap,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: size.height * 0.06,
          color: Theme.of(context).backgroundColor,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                path,
                color: color,
              ),
              Text(
                label,
                style:
                    Theme.of(context).textTheme.caption!.copyWith(color: color),
              )
            ],
          ),
        ),
      ),
    );
  }
}
