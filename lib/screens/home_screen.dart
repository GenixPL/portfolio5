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
        Container(
          height: 500,
          width: 300,
          color: Colors.transparent,
          child: const Center(
            child: Text('short bio'),
          ),
        ),
        const SizedBox(height: 24.0),
        Container(
          color: Colors.green,
          child: const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: GithubStats(),
            ),
          ),
        ),
        const SizedBox(height: 24.0),
        Container(
          height: 500,
          width: 300,
          color: Colors.yellow,
          child: const Center(
            child: Text('StackOverflow'),
          ),
        ),
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
        Container(
          height: 500,
          width: 300,
          color: Colors.grey,
          child: const Center(
            child: Text('github waiting game'),
          ),
        ),
      ],
    );
  }
}
