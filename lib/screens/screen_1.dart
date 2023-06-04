import 'package:flutter/material.dart';
import 'package:portfolio5/widgets/_widgets.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  static const String path = '/screen1';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ContentContainer(
        style: ContentContainerStyle.centeredWithBottomFooter,
        footer: const Footer(),
        contents: <Widget>[
          const Text('screen 1'),
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
