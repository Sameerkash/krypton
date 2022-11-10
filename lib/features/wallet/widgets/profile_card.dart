import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppColors.secondary),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Portfolio Balance',

              ),
              const Text(
                '\$ 46.78',
              ),
              Chip(
                label: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CircleAvatar(),
                    Text(
                      '\$ 46.78',
                    ),
                    Icon(
                      Icons.arrow_circle_down_sharp,
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
