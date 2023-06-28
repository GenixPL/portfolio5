import 'package:flutter/material.dart';
import 'package:portfolio5/styles/_styles.dart';
import 'package:portfolio5/widgets/_widgets.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  static const String path = '/about';

  static const double _spaceSize = 64.0;

  // TODO(genix): add sorting into groups

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ContentContainer(
        style: ContentContainerStyle.centeredWithBottomFooter,
        footer: const Footer(),
        contents: <Widget>[
          const _Section(
            name: 'Technologies',
            child: DetailedTechnologies(),
          ),
          const SizedBox(height: _spaceSize),
          const _Section(
            name: 'Languages',
            child: DetailedLanguages(),
          ),
          const SizedBox(height: _spaceSize),
          _Section(
            name: 'University',
            child: Column(
              children: [
                SizedBox(
                  height: 160.0,
                  width: 160.0,
                  child: GestureDetector(
                    onTap: () {
                      launchUrlString('https://ww4.mini.pw.edu.pl');
                    },
                    child: Image.asset(
                      OtherImages.miniPw,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 24.0),
                _text('Warsaw University of Technology'),
                _text('Faculty of Mathematics and Information Science'),
                const SizedBox(height: 16.0),
                _text('Bachelor of Engineering in Computer Science (EN)'),
                const SizedBox(height: 16.0),
                _text('Sep 2016 - Feb 2020'),
                _text('(3.5 year program)'),
              ],
            ),
          ),
          const SizedBox(height: _spaceSize),
          Container(
            color: Colors.black,
            child: const Text('location'),
          ),
          const SizedBox(height: _spaceSize),
          Container(
            color: Colors.black,
            child: const Text('courses'),
          ),
          const SizedBox(height: _spaceSize),
          Container(
            color: Colors.black,
            child: const Text('hobbies'),
          ),
        ],
      ),
    );
  }

  Widget _text(String text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: FontFamily.cpMono.assetName,
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({
    required this.name,
    required this.child,
  });

  final String name;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: TextStyle(
            fontFamily: FontFamily.cpMono.assetName,
            fontSize: 24.0,
          ),
        ),
        const SizedBox(height: 12.0),
        child,
      ],
    );
  }
}
