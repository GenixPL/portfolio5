import 'package:flutter/material.dart';
import 'package:portfolio5/widgets/_widgets.dart';

class Screen2 extends StatelessWidget {
  const Screen2({
    super.key,
  });

  static const String path = '/screen2';

  @override
  Widget build(BuildContext context) {
    return const ContentContainer(
      style: ContentContainerStyle.centeredWithBottomFooter,
      footer: Footer(),
      contents: <Widget>[
        Text('screen 2'),
      ],
    );
  }
}
