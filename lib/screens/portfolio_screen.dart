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
          const Text('portfolio'),
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
