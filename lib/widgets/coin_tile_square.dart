import 'dart:ui';

import 'package:flutter/material.dart';

class CoinTileSquare extends StatelessWidget {
  final Widget logo;
  final Widget graph;
  final Color backDropColor;
  final String name;
  final String code;
  final double price;
  final double metric;
  const CoinTileSquare({
    Key? key,
    required this.logo,
    required this.name,
    required this.code,
    required this.price,
    required this.metric,
    required this.graph,
    required this.backDropColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.5,
      child: Stack(
        children: [
          Center(
            child: ClipOval(
              child: Container(
                color: backDropColor,
                height: 30,
                width: 90,
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 40,
                sigmaY: 30,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white.withOpacity(0.12),
                ),
                padding: const EdgeInsets.all(15),
                width: size.width * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 36,
                          height: 36,
                          child: logo,
                        ),
                        const VerticalDivider(
                          color: Colors.transparent,
                          width: 7,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Divider(color: Colors.transparent, height: 2),
                            Text(
                              code,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white.withOpacity(0.4),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(color: Colors.transparent),
                    graph,
                    Row(
                      children: [
                        Text(
                          r'$' '$price',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_drop_down,
                              color: metric < 0 ? Colors.red : Colors.green,
                            ),
                            Text(
                              '${(metric.abs())}%',
                              style: TextStyle(
                                color: metric < 0 ? Colors.red : Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
