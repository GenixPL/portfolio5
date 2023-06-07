import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio5/data/_data.dart';
import 'package:portfolio5/screens/_screens.dart';
import 'package:portfolio5/styles/_styles.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
                      fontFamily: FontFamily.cpMono.assetName,
                      fontSize: 12.0,
                    ),
                  ),
                  const SizedBox(width: 12.0),
                  Text(
                    // Letters' sizes are strange due to the font.
                    'łN',
                    style: TextStyle(
                      height: 1.25,
                      fontFamily: FontFamily.kontanter.assetName,
                      fontSize: 28.0,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            _ScreenButton(
              currentRouteName: currentRouteName,
              text: 'Portfolio',
              path: PortfolioScreen.path,
            ),
            _ScreenButton(
              currentRouteName: currentRouteName,
              text: 'About',
              path: AboutScreen.path,
            ),
            _ScreenButton(
              currentRouteName: currentRouteName,
              text: 'Contact',
              path: ContactScreen.path,
            ),
            for (Social social in Social.values)
              _SocialButton(
                social: social,
              )
          ],
        ),
      ),
    );
  }
}

class _ScreenButton extends StatelessWidget {
  const _ScreenButton({
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
          fontFamily: FontFamily.cpMono.assetName,
          fontSize: isActive ? 20.0 : 14.0,
        ),
      ),
    );
  }
}

// TODO(genix): needs cleaning
class _SocialButton extends StatefulWidget {
  const _SocialButton({
    required this.social,
  });

  final Social social;

  static const double _size = 20.0;

  @override
  State<_SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<_SocialButton> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => launchUrlString(widget.social.url),
      onHover: (bool hovered) {
        _hovered = hovered;
        setState(() {});
      },
      child: SvgPicture.asset(
        widget.social.icon.assetPath,
        width: _SocialButton._size,
        height: _SocialButton._size,
        colorFilter: ColorFilter.mode(
          _hovered ? Colors.white : Colors.amber,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
