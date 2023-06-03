import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio5/screens/_screens.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade900,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            TextButton(
              onPressed: () {
                context.goNamed(Screen1.routeName);
              },
              child: const Text('1'),
            ),
            TextButton(
              onPressed: () {
                context.goNamed(Screen2.routeName);
              },
              child: const Text('2'),
            ),
          ],
        ),
      ),
    );
  }
}
