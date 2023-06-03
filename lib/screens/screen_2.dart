import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({
    super.key,
  });

  static const String routeName = 'screen2';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('screen 2'),
          ],
        ),
      ),
    );
  }
}
