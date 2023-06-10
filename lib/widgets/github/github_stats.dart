import 'package:flutter/material.dart';
import 'package:portfolio5/data/_data.dart';
import 'package:provider/provider.dart';

class GithubStats extends StatelessWidget {
  const GithubStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            context.read<GithubStatsProvider>().fetch();
          },
          child: const Text('fetch'),
        ),
        Text(
          context.watch<GithubStatsProvider>().calendarRaw?.toString() ?? 'null',
        ),
      ],
    );
  }
}
