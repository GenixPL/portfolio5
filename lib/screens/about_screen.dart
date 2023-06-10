import 'package:flutter/material.dart';
import 'package:portfolio5/widgets/_widgets.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  static const String path = '/about';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ContentContainer(
        style: ContentContainerStyle.centeredWithBottomFooter,
        footer: const Footer(),
        contents: <Widget>[
          Container(
            color: Colors.black,
            child: const Text('frameworks'),
          ),
          const SizedBox(height: 24.0),
          Container(
            color: Colors.black,
            child: const Text('languages (coding)'),
          ),
          const SizedBox(height: 24.0),
          Container(
            color: Colors.black,
            child: const Text('languages (human)'),
          ),
          const SizedBox(height: 24.0),
          Container(
            color: Colors.black,
            child: const Text('uni'),
          ),
          const SizedBox(height: 24.0),
          Container(
            color: Colors.black,
            child: const Text('location'),
          ),
          const SizedBox(height: 24.0),
          Container(
            color: Colors.black,
            child: const Text('hobbies'),
          ),
        ],
      ),
    );
  }
}
