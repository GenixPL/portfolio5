import 'package:flutter/material.dart';
import 'package:portfolio5/widgets/_widgets.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  static const String path = '/portfolio';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ContentContainer(
        style: ContentContainerStyle.centeredWithBottomFooter,
        footer: const Footer(),
        contents: <Widget>[
          Container(
            color: Colors.black,
            child: const Text('articles'),
          ),
          const SizedBox(height: 24.0),
          Container(
            color: Colors.black,
            child: const Text('algorithms'),
          ),
          const SizedBox(height: 24.0),
          Container(
            color: Colors.black,
            child: const Text('apps'),
          ),
          const SizedBox(height: 24.0),
          Container(
            color: Colors.black,
            child: const Text('hackathons'),
          ),
        ],
      ),
    );
  }
}
