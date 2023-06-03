import 'package:flutter/material.dart';
import 'package:portfolio5/widgets/_widgets.dart';

class Shell extends StatelessWidget {
  const Shell({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TopBar(),
          Expanded(
            child: child,
          ),
        ],
      ),
    );
  }
}
