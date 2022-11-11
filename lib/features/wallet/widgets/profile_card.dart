import 'package:flutter/material.dart';
import 'package:krypton/features/wallet/widgets/transaction_button.dart';
import 'package:krypton/utils/strings.dart';

import '../../../utils/colors.dart';

class ProfileCard extends StatelessWidget {
  final int balance;
  final String name;
  final String? avatar;
  const ProfileCard({
    Key? key,
    required this.balance,
    required this.name,
    this.avatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white,
          width: 0.5
        )
      ),
      padding: const EdgeInsets.all(28),
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
                    '\$$balance',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              ProfileDetailsChip(
                label: name,
                avatar: avatar,
              )
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            children: const [
              TransactionButton(
                label: 'Send',
                icon: ImagePaths.send,
              ),
              TransactionButton(
                label: 'Receive',
                icon: ImagePaths.receive,
              ),
              Spacer(),
              TransactionButton(
                label: 'Scan',
                icon: ImagePaths.scan,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProfileDetailsChip extends StatelessWidget {
  final String label;
  final String? avatar;
  const ProfileDetailsChip({
    Key? key,
    required this.label,
    this.avatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      label: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: avatar != null ? NetworkImage(avatar!) : null,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            label,
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
