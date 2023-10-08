import 'package:flutter/material.dart';

extension WidgetListExtensions on List<Widget> {
  List<Widget> withSpacing(
    double spacing, {
    bool vertical = true,
    bool before = false,
    bool after = false,
  }) {
    final SizedBox sizedBox = SizedBox(
      height: vertical ? spacing : null,
      width: vertical ? null : spacing,
    );

    final List<Widget> result = <Widget>[
      if (before) sizedBox,
    ];

    for (int i = 0; i < length; i++) {
      result.add(this[i]);

      if (after || i < (length - 1)) {
        result.add(sizedBox);
      }
    }

    return result;
  }
}
