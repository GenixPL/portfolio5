import 'package:flutter/material.dart';
import 'package:portfolio5/widgets/_widgets.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  static const String path = '/contact';

  @override
  Widget build(BuildContext context) {
    return ContentContainer(
      style: ContentContainerStyle.centeredWithBottomFooter,
      footer: const Footer(),
      contents: <Widget>[
        Container(
          color: Colors.black,
          child: const Text('email'),
        ),
        const SizedBox(height: 24.0),
        Container(
          color: Colors.black,
          child: const Text('fb'),
        ),
        const SizedBox(height: 24.0),
        Container(
          color: Colors.black,
          child: const Text('in person'),
        ),
      ],
    );
  }
}
