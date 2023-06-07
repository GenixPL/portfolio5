import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio5/screens/_screens.dart';
import 'package:portfolio5/styles/_styles.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
    required this.currentRouteName,
  });

  final String currentRouteName;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade900,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            TextButton(
              onPressed: () => context.go(HomeScreen.path),
              child: Row(
                children: [
                  Text(
                    '|_|0|_|\n|_|_|0|\n|0|0|0|',
                    style: TextStyle(
                      height: 1.25,
                      fontFamily: FontFamily.cpMono.assetName(),
                      fontSize: 12.0,
                    ),
                  ),
                  const SizedBox(width: 12.0),
                  Text(
                    // Letters' sizes are strange due to the font.
                    'łN',
                    style: TextStyle(
                      height: 1.25,
                      fontFamily: FontFamily.kontanter.assetName(),
                      fontSize: 28.0,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            _SectionButton(
              currentRouteName: currentRouteName,
              text: 'Portfolio',
              path: PortfolioScreen.path,
            ),
            _SectionButton(
              currentRouteName: currentRouteName,
              text: 'About',
              path: AboutScreen.path,
            ),
            _SectionButton(
              currentRouteName: currentRouteName,
              text: 'Contact',
              path: ContactScreen.path,
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionButton extends StatelessWidget {
  const _SectionButton({
    required this.currentRouteName,
    required this.text,
    required this.path,
  });

  final String currentRouteName;
  final String text;
  final String path;

  @override
  Widget build(BuildContext context) {
    final bool isActive = path == currentRouteName;

    return TextButton(
      onPressed: () => context.go(path),
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          fontWeight: isActive ? FontWeight.w900 : null,
          fontFamily: FontFamily.cpMono.assetName(),
          fontSize: isActive ? 20.0 : 14.0,
        ),
      ),
    );
  }
}
