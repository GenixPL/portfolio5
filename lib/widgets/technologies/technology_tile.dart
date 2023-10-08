import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio5/data/_data.dart';
import 'package:portfolio5/styles/font_family.dart';
import 'package:portfolio5/widgets/_widgets.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TechnologyTile extends StatelessWidget {
  const TechnologyTile({
    super.key,
    required this.technology,
  });

  final Technology technology;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: HoverButton(
        onTap: () {
          launchUrlString(technology.infoUrl);
        },
        builder: (context, isHovered) {
          return _TileBody(
            technology: technology,
            isHovered: isHovered,
          );
        },
      ),
    );
  }
}

class _TileBody extends StatelessWidget {
  const _TileBody({
    required this.technology,
    required this.isHovered,
  });

  static const double _logoSize = 24.0;

  final Technology technology;
  final bool isHovered;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isHovered ? Colors.black26 : null,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (technology.logoFull != null)
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: SizedBox(
                  width: _logoSize,
                  height: _logoSize,
                  child: SvgPicture.asset(
                    technology.logoFull!,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            SizedBox(
              height: _logoSize,
              child: Center(
                child: Text(
                  technology.fullName,
                  style: TextStyle(
                    fontFamily: FontFamily.cpMono.assetName,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
