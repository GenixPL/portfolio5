import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio5/data/_data.dart';
import 'package:portfolio5/styles/_styles.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade900,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            for (Social social in Social.values)
              _SocialButton(
                social: social,
              ),
            // TODO(genix): add
            Text(
              'CV',
              style: TextStyle(
                fontFamily: FontFamily.cpMono.assetName,
              ),
            ),
          ],
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
