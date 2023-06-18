import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio5/data/_data.dart';
import 'package:portfolio5/styles/_styles.dart';
import 'package:provider/provider.dart';

class StackOverflowStatsWidget extends StatelessWidget {
  const StackOverflowStatsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final StackOverflowStats? stats = context.watch<StackOverflowStatsProvider>().stats;

    return Column(
      children: [
        SvgPicture.asset(
          OtherIcons.stackFull,
          height: 100.0,
          fit: BoxFit.scaleDown,
        ),
        TextButton(
          onPressed: () {
            context.read<StackOverflowStatsProvider>().optimisedFetch();
          },
          child: const Text('fetch'),
        ),
        if (stats == null)
          const Text('no data')
        else
          Column(
            children: [
              Text('Reputation: ${stats.reputation}'),
              Text('Bronze: ${stats.bronzeBadges}'),
              Text('Silver: ${stats.silverBadges}'),
              Text('Bold: ${stats.goldBadges}'),
            ],
          ),
      ],
    );
  }
}
