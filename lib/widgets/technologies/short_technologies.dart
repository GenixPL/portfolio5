import 'package:flutter/material.dart';
import 'package:portfolio5/data/_data.dart';
import 'package:portfolio5/styles/_styles.dart';
import 'package:portfolio5/widgets/_widgets.dart';

class ShortTechnologies extends StatelessWidget {
  const ShortTechnologies({super.key});

  static const List<Technology> _mainTechnologies = [
    Technology.flutter,
    Technology.dart,
  ];

  static const List<Technology> _mainSystems = [
    Technology.android,
    Technology.ios,
    Technology.watchOs,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _basicText('Main Technologies', 24.0),
        _buildTechnologyWrap(
          technologies: _mainTechnologies,
        ),

        const SizedBox(height: 24.0),

        _basicText('Main Systems', 24.0),
        _buildTechnologyWrap(
          technologies: _mainSystems,
        ),
        _basicText('[+ whatever Flutter provides]', 16.0),

        const SizedBox(height: 24.0),

        // TODO(genix): add
        _basicText('Secondary Technologies', 24.0),

        _basicText('CI/CD', 24.0),
        _basicText('Protocols', 24.0),
      ],
    );
  }

  Widget _buildTechnologyWrap({
    required List<Technology> technologies,
  }) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        for (Technology technology in technologies)
          TechnologyTile(
            technology: technology,
          ),
      ],
    );
  }

  Widget _basicText(String text, double size) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: FontFamily.cpMono.assetName,
        fontSize: size,
      ),
    );
  }
}
