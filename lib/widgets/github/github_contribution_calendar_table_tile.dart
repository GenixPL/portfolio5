import 'package:flutter/material.dart';
import 'package:portfolio5/styles/_styles.dart';
import 'package:portfolio5/utils/_utils.dart';

class GithubContributionCalendarTableTile extends StatefulWidget {
  const GithubContributionCalendarTableTile({
    super.key,
    required this.value,
  });

  final int value;

  @override
  State<GithubContributionCalendarTableTile> createState() => _GithubContributionCalendarTableTileState();
}

class _GithubContributionCalendarTableTileState extends State<GithubContributionCalendarTableTile> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: MouseRegion(
          onHover: (_) {
            _hovered = true;
            setState(() {});
          },
          onExit: (_) {
            _hovered = false;
            setState(() {});
          },
          child: Container(
            decoration: BoxDecoration(
              color: Color.lerp(
                Colors.grey.shade900,
                context.theme.colorScheme.primary,
                _getColorT(widget.value),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Center(
              child: _hovered
                  ? Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        widget.value.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: FontFamily.cpMono.assetName,
                          fontSize: 12.0,
                        ),
                      ),
                    )
                  : null,
            ),
          ),
        ),
      ),
    );
  }

  double _getColorT(int value) {
    return switch (value) {
      0 => 0.0,
      < 5 => 0.2,
      < 10 => 0.4,
      < 15 => 0.6,
      < 20 => 0.8,
      _ => 1.0,
    };
  }
}
