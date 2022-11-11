import 'package:flutter/material.dart';

class SortTextContainer extends StatelessWidget {
  final bool isActive;
  final String label;
  const SortTextContainer({
    Key? key,
    this.isActive = false,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isActive ? Colors.yellow : null,
      padding: const EdgeInsets.only(left: 16, top: 14, bottom: 14),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (isActive)
            Text(
              label,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: isActive ? Colors.black : Colors.white),
            )
        ],
      ),
    );
  }
}
