import 'package:flutter/material.dart';
import 'package:portfolio5/widgets/_widgets.dart';

class Shell extends StatelessWidget {
  const Shell({
    super.key,
    required this.currentRouteName,
    required this.child,
  });

  final String currentRouteName;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBar(
            currentRouteName: currentRouteName,
          ),
          Expanded(
            child: child,
          ),
        ],
      ),
    );
  }
}
