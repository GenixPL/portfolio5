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
          const Text('about'),
          Container(
            color: Colors.amber,
            height: 300,
          ),
          Container(
            color: Colors.redAccent,
            height: 400,
          ),
          // Container(
          //   color: Colors.blueAccent,
          //   height: 400,
          // ),
        ],
      ),
    );
  }
}
