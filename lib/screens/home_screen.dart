import 'package:flutter/material.dart';

class HomeScreenUriFactory {
  const HomeScreenUriFactory();
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  static const String path = '/';

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Home',
          ),
        ],
      ),
    );
  }
}
