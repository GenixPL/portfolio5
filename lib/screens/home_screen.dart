import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
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
    return ContentContainer(
      style: ContentContainerStyle.centeredWithBottomFooter,
      footer: const Footer(),
      contents: <Widget>[
        GestureDetector(
          child: const Text('send'),
          onTap: () {
            http.post(
              Uri.parse('https://dupaa.free.beeceptor.com'),
              headers: {
                'auth': testString,
              },
            ).then((value) => print(value.body));
          },
        ),
        const Text('Home'),
      ],
    );
  }
}
