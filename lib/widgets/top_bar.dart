import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio5/screens/_screens.dart';

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
            _Button(
              currentRouteName: currentRouteName,
              text: 'home',
              path: HomeScreen.path,
            ),
            _Button(
              currentRouteName: currentRouteName,
              text: '1',
              path: Screen1.path,
            ),
            _Button(
              currentRouteName: currentRouteName,
              text: '2',
              path: Screen2.path,
            ),
          ],
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    required this.currentRouteName,
    required this.text,
    required this.path,
  });

  final String currentRouteName;
  final String text;
  final String path;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.go(path);
      },
      child: Text(
        text,
        style: path == currentRouteName
            ? const TextStyle(
                fontWeight: FontWeight.w900,
              )
            : null,
      ),
    );
  }
}
