import 'package:flutter/material.dart';
import 'package:portfolio5/widgets/_widgets.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  static const String path = '/contact';

  @override
  Widget build(BuildContext context) {
    return const ContentContainer(
      style: ContentContainerStyle.centeredWithBottomFooter,
      footer: Footer(),
      contents: <Widget>[
        Text('contact'),
      ],
    );
  }
}
