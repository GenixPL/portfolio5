import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio5/styles/_styles.dart';
import 'package:portfolio5/utils/_utils.dart';

class Bio extends StatefulWidget {
  const Bio({super.key});

  @override
  State<Bio> createState() => _BioState();
}

// TODO(genix): something throws
class _BioState extends State<Bio> {
  Timer? _timer;
  int _ticks = 0;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startNextTimer();
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _timer = null;

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _part1(),
          _part2(),
          _part3(),
          // Image.asset(OtherImages.photo),
        ].withSpacing(48.0),
      ),
    );
  }

  Widget _part1() {
    return Container(
      color: Colors.black,
      child: Text(
        '> ${'Hello World!'.substring(0, min(_ticks, 12))}${[14, 16, 18].contains(_ticks) ? '|' : ''}',
        style: TextStyle(
          fontFamily: FontFamily.cpMono.assetName,
          fontSize: 28.0,
          color: const Color(0xFF4AF626),
        ),
      ),
    );
  }

  Widget _part2() {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: [
          TextSpan(
            text: 'My name is ',
            style: _basicStyle(
              isBig: true,
            ),
          ),
          TextSpan(
            text: 'łukASZ',
            style: _fancyStyle(
              context,
              isBig: true,
            ),
          ),
          TextSpan(
            text: ' and I\'m a ',
            style: _basicStyle(
              isBig: true,
            ),
          ),
          TextSpan(
            text: 'Mobile DeVeloPer',
            style: _fancyStyle(
              context,
              isBig: true,
            ),
          ),
          TextSpan(
            text: '.',
            style: _basicStyle(
              isBig: true,
            ),
          ),
        ],
      ),
    );
  }

  Widget _part3() {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: [
          TextSpan(
            text: 'TODO(genix): <Some nicely phrased bullshit about me having ',
            style: _basicStyle(
              isBig: false,
            ),
          ),
          TextSpan(
            text: (DateTime.now().year - 2015).toString(),
            style: _fancyStyle(
              context,
              isBig: false,
            ),
          ),
          TextSpan(
            text: ' years of programming experience and having touched many technologies with ',
            style: _basicStyle(
              isBig: false,
            ),
          ),
          TextSpan(
            text: 'Fluter',
            style: _fancyStyle(
              context,
              isBig: false,
            ),
          ),
          TextSpan(
            text: ' being the main one.>',
            style: _basicStyle(
              isBig: false,
            ),
          ),
          const TextSpan(text: '\n\n'),
          TextSpan(
            text: 'TODODODO(🎺): <Some more of that stuff saying that ',
            style: _basicStyle(
              isBig: false,
            ),
          ),
          TextSpan(
            text: 'SoFtWAre Architecture',
            style: _fancyStyle(
              context,
              isBig: false,
            ),
          ),
          TextSpan(
            text: ' is my biggest passion and I\'m highly focused on delivering exceptional things I can be proud of.>',
            style: _basicStyle(
              isBig: false,
            ),
          ),
        ],
      ),
    );
  }

  TextStyle _basicStyle({
    required bool isBig,
  }) {
    return TextStyle(
      fontFamily: FontFamily.cpMono.assetName,
      fontSize: isBig ? 32.0 : 16.0,
    );
  }

  TextStyle _fancyStyle(
    BuildContext context, {
    required bool isBig,
  }) {
    return TextStyle(
      fontFamily: FontFamily.kontanter.assetName,
      fontSize: isBig ? 32.0 : 16.0,
      color: context.theme.colorScheme.primary,
    );
  }

  void _startNextTimer() {
    if (!mounted) {
      return;
    }

    _timer = Timer(const Duration(milliseconds: 400), _timerHandle);
  }

  void _timerHandle() {
    if (!mounted) {
      return;
    }

    _ticks++;
    if (_ticks < 19) {
      _startNextTimer();
    }

    setState(() {});
  }
}
