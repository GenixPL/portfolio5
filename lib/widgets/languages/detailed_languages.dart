import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio5/data/_data.dart';
import 'package:portfolio5/styles/_styles.dart';

class DetailedLanguages extends StatefulWidget {
  const DetailedLanguages({super.key});

  @override
  State<DetailedLanguages> createState() => _DetailedLanguagesState();
}

class _DetailedLanguagesState extends State<DetailedLanguages> {
  static const Axis _scrollDirection = Axis.horizontal;

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return YgScrollShadow(
      controller: _scrollController,
      scrollDirection: _scrollDirection,
      child: SingleChildScrollView(
        scrollDirection: _scrollDirection,
        controller: _scrollController,
        child: Row(
          children: [
            for (Language language in Language.values)
              Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: 140.0,
                    child: Column(
                      children: [
                        Text(
                          language.name.toUpperCase(),
                          style: TextStyle(
                            fontFamily: FontFamily.cpMono.assetName,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(9.0)),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                              child: SvgPicture.asset(
                                language.flagIcon,
                                width: 40.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          language.level.toUpperCase(),
                          style: TextStyle(
                            fontFamily: FontFamily.cpMono.assetName,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

/// Applies a shadow at the top or bottom of a scroll view.
class YgScrollShadow extends StatefulWidget {
  const YgScrollShadow({
    super.key,
    required this.child,
    required this.controller,
    required this.scrollDirection,
  });

  /// The child widget.
  final Widget child;

  /// The [ScrollController] of the scrollable surface which the shadows should
  /// be added to.
  final ScrollController controller;

  final Axis scrollDirection;

  @override
  State<YgScrollShadow> createState() => _YgScrollShadowState();
}

class _YgScrollShadowState extends State<YgScrollShadow> {
  bool _showBottomShadow = false;
  bool _showTopShadow = false;

  @override
  void initState() {
    widget.controller.addListener(_updateShadows);
    WidgetsBinding.instance.addPostFrameCallback((_) => _updateShadows());

    super.initState();
  }

  void _updateShadows() {
    final ScrollPosition position = widget.controller.position;

    final bool newShowBottomShadow = position.extentAfter != 0;
    final bool newShowTopShadow = position.extentBefore != 0;

    if ((_showBottomShadow != newShowBottomShadow) || (_showTopShadow != newShowTopShadow)) {
      _showBottomShadow = newShowBottomShadow;
      _showTopShadow = newShowTopShadow;
      setState(() {});
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_updateShadows);
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant YgScrollShadow oldWidget) {
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.removeListener(_updateShadows);
      widget.controller.addListener(_updateShadows);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        widget.child,
        _buildShadow(
          alignment: Alignment.centerLeft,
          shown: _showBottomShadow,
        ),
        _buildShadow(
          alignment: Alignment.centerRight,
          shown: _showTopShadow,
        ),
      ],
    );
  }

  Widget _buildShadow({
    required Alignment alignment,
    required bool shown,
  }) {
    return Positioned(
      bottom: 0,
      top: 0,
      left: alignment.x > 0 ? 0 : null,
      right: alignment.x < 0 ? 0 : null,
      child: IgnorePointer(
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 200),
          curve: Curves.ease,
          opacity: shown ? 1 : 0,
          child: Container(
            width: 2.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: const <Color>[
                  Colors.black54,
                  Colors.transparent,
                ],
                end: alignment,
                begin: -alignment,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
