import 'package:flutter/material.dart';
import 'package:portfolio5/config.dart';
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
    return const ContentContainer(
      style: ContentContainerStyle.centeredWithBottomFooter,
      footer: Footer(),
      contents: <Widget>[
        Text(testString),
        Text('Home'),
      ],
    );
  }
}
