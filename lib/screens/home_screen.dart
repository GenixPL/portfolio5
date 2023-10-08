import 'package:flutter/material.dart';
import 'package:portfolio5/utils/_utils.dart';
import 'package:portfolio5/widgets/_widgets.dart';

class HomeScreenUriFactory {
  const HomeScreenUriFactory();
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  static const double _spacing = 64.0;

  static const String path = '/';

  @override
  Widget build(BuildContext context) {
    return ContentContainer(
      style: ContentContainerStyle.topWithBottomFooter,
      footer: const Footer(),
      contents: <Widget>[
        const Bio(),
        const GithubStatsWidget(),
        const StackOverflowStatsWidget(),
        const ShortTechnologies(),
        const Game(),
      ].withSpacing(
        48.0,
        before: true,
        after: true,
      ),
    );
  }
}
