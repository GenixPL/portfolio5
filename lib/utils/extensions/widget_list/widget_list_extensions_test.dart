import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio5/utils/extensions/widget_list/_widget_list.dart';

void main() {
  group('WidgetListExtensions', () {
    group('withSpacing', () {
      test('should add spacing in between', () async {
        // PREPARE
        final List<Widget> initial = <Widget>[
          Container(),
          Container(),
          Container(),
        ];

        // TRIGGER
        final List<Widget> result = initial.withSpacing(10);

        // TEST
        expect(result[0] is Container, true);
        expect(result[1] is SizedBox, true);
        expect(result[2] is Container, true);
        expect(result[3] is SizedBox, true);
        expect(result[4] is Container, true);
      });
    });
  });
}
