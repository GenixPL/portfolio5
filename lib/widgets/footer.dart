import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade900,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text('footer'),
          ],
        ),
      ),
    );
  }
}
