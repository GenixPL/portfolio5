import 'package:flutter/material.dart';
import 'package:portfolio5/widgets/_widgets.dart';

class HomeScreenUriFactory {
  const HomeScreenUriFactory();
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  static const String path = '/';

  @override
  Widget build(BuildContext context) {
    return ContentContainer(
      style: ContentContainerStyle.topWithBottomFooter,
      footer: const Footer(),
      contents: <Widget>[
        const Bio(),
        const SizedBox(height: 24.0),
        const GithubStatsWidget(),
        const SizedBox(height: 24.0),
        const StackOverflowStatsWidget(),
        const SizedBox(height: 24.0),
        Container(
          height: 500,
          width: 300,
          color: Colors.blue,
          child: const Center(
            child: Text('Technologies and read more (about)'),
          ),
        ),
        const SizedBox(height: 24.0),
        const Game(),
      ],
    );
  }
}
