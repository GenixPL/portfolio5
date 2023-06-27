import 'package:flutter/material.dart';

class HoverButton extends StatefulWidget {
  const HoverButton({
    super.key,
    required this.onTap,
    required this.builder,
  });

  final void Function() onTap;
  final Widget Function(BuildContext context, bool isHovered) builder;

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onExit: (_) {
          _hovered = false;
          setState(() {});
        },
        onEnter: (_) {
          _hovered = true;
          setState(() {});
        },
        child: widget.builder(context, _hovered),
      ),
    );
  }
}
