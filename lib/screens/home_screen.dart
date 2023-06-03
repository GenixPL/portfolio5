import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio5/screens/_screens.dart';

class HomeScreenUriFactory {
  const HomeScreenUriFactory();
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Home',
            ),
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
