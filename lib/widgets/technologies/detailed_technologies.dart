import 'package:flutter/material.dart';
import 'package:portfolio5/data/_data.dart';
import 'package:portfolio5/styles/_styles.dart';
import 'package:portfolio5/utils/_utils.dart';
import 'package:portfolio5/widgets/_widgets.dart';

class DetailedTechnologies extends StatelessWidget {
  const DetailedTechnologies({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (TechnologyCategory category in TechnologyCategory.values) _buildCategory(category),
      ].withSpacing(24.0),
    );
  }

  Widget _buildCategory(TechnologyCategory category) {
    return Column(
      children: [
        Text(
          category.text,
          style: TextStyle(
            fontFamily: FontFamily.cpMono.assetName,
            fontSize: 18.0,
          ),
        ),
        Wrap(
          alignment: WrapAlignment.center,
          children: [
            for (Technology technology in Technology.values)
              if (technology.category == category)
                TechnologyTile(
                  technology: technology,
                ),
          ],
        ),
      ],
    );
  }
}
