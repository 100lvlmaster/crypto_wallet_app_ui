import 'package:flutter/material.dart';

class CoinTile extends StatelessWidget {
  final Widget logo;
  final String name;
  final String code;
  final String price;
  final double metric;
  const CoinTile({
    Key? key,
    required this.code,
    required this.name,
    required this.price,
    required this.metric,
    required this.logo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 40,
          width: 40,
          child: logo,
        ),
        const VerticalDivider(color: Colors.transparent),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              code,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withOpacity(0.4),
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(price),
            Text(
              '${metric < 0 ? '' : '+'}$metric%',
              style: TextStyle(
                color: metric < 0 ? Colors.red : Colors.green,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
