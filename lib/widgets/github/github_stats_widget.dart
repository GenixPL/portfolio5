import 'package:flutter/material.dart';
import 'package:portfolio5/data/_data.dart';
import 'package:portfolio5/widgets/_widgets.dart';
import 'package:provider/provider.dart';

class GithubStatsWidget extends StatelessWidget {
  const GithubStatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final GithubContributionCalendarRaw? calendarRaw = context.watch<GithubStatsProvider>().calendarRaw;

    return Column(
      children: [
        TextButton(
          onPressed: () {
            context.read<GithubStatsProvider>().optimisedFetch();
          },
          child: const Text('fetch'),
        ),
        if (calendarRaw == null)
          const Text('no data')
        else
          GithubContributionCalendarTable(
            calendarRaw: calendarRaw,
          ),
      ],
    );
  }
}
