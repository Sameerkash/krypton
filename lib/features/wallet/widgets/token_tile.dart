import 'package:flutter/material.dart';

class TokenTile extends StatelessWidget {
  final String iconUrl;
  final String symbol;
  final String name;
  final int currentPrice;
  final int balance;
  const TokenTile({
    Key? key,
    required this.iconUrl,
    required this.symbol,
    required this.name,
    required this.currentPrice,
    required this.balance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 18,
      ),
      color: Colors.black,
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              iconUrl,
            ),
          ),
          const SizedBox(width: 8),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              name,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              symbol,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ]),
          const SizedBox(
            height: 8,
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '$balance',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                '\$$currentPrice',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          )
        ],
      ),
    );
  }
}
