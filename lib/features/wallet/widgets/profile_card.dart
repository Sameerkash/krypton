import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Portfolio Balance',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Text(
                    '\$46.78',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              const ProfileDetailsChip()
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileDetailsChip extends StatelessWidget {
  const ProfileDetailsChip({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            radius: 20,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            'Jon Ben',
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(color: Colors.black),
          ),
          const SizedBox(
            width: 8,
          ),
          const Icon(
            Icons.arrow_circle_down_sharp,
          )
        ],
      ),
    );
  }
}
