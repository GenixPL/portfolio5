import 'package:flutter/material.dart';

enum ContentContainerStyle {
  centeredWithBottomFooter,
  topWithBottomFooter,
}

class ContentContainer extends StatelessWidget {
  const ContentContainer({
    super.key,
    required this.style,
    required this.footer,
    required this.contents,
  });

  final List<Widget> contents;
  final Widget? footer;
  final ContentContainerStyle style;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: constraints.maxWidth,
              minHeight: constraints.maxHeight,
            ),
            child: switch ((style)) {
              ContentContainerStyle.centeredWithBottomFooter => _buildCentered(),
              ContentContainerStyle.topWithBottomFooter => _buildTop(),
            },
          ),
        );
      },
    );
  }

  Widget _buildCentered() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const SizedBox(),
        Column(
          children: contents,
        ),
        footer ?? const SizedBox(),
      ],
    );
  }

  Widget _buildTop() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: contents,
        ),
        footer ?? const SizedBox(),
      ],
    );
  }
}