import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio5/data/_data.dart';
import 'package:portfolio5/styles/_styles.dart';
import 'package:portfolio5/widgets/buttons/_buttons.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DetailedTechnologies extends StatelessWidget {
  const DetailedTechnologies({super.key});

  static const double _logoSize = 24.0;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        for (Technology technology in Technology.values)
          HoverButton(
            onTap: () {
              launchUrlString(technology.wikiUrl);
            },
            builder: (context, isHovered) {
              return Card(
                color: isHovered ? Colors.black26 : null,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (technology.logo != null)
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: SizedBox(
                            width: _logoSize,
                            height: _logoSize,
                            child: SvgPicture.asset(
                              technology.logo!,
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
            },
          ),
      ],
    );
  }
}
