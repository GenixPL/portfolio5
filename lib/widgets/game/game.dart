import 'dart:async';
import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

enum _GameState {
  running,
  stopped,
}

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameWidgetState();
}

class _GameWidgetState extends State<Game> {
  static const double _boardW = 400;
  static const double _boardH = 200;
  static const double _dObstacleX = 0.01;
  static const Duration _interval = Duration(milliseconds: 16); // 34 == ~30fps
  static const double _ballS = 5.0;
  static const double _ballOffset = 25.0;
  static const double _obstacleW = 5.0;
  static const double _obstacleH = 10.0;

  Timer? _obstacleTimer;
  Timer? _timer;
  _GameState _gameState = _GameState.stopped;
  final List<double> _obstacleFs = [];

  static const double _ballHeightChange = 25.0;
  double _ballHeight = 0.0;
  double _dHeight = 0.0;
  int _score = 0;

  StreamSubscription? _sub;

  @override
  void initState() {
    super.initState();

    _sub = window.onKeyPress.listen(_onKeyPressed);
  }

  @override
  void dispose() {
    _sub?.cancel();
    _stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        width: _boardW,
        height: _boardH,
        child: (_gameState == _GameState.stopped)
            ? Center(
                child: TextButton(
                  onPressed: _start,
                  child: const Text('start'),
                ),
              )
            : GestureDetector(
                onTap: _jump,
                child: Container(
                  color: Colors.transparent,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Column(
                          children: [
                            Text('score: $_score'),
                            IconButton(
                              onPressed: _stop,
                              icon: const Icon(Icons.pause),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 25 + (_ballHeightChange * _ballHeight),
                        left: _ballOffset,
                        child: Container(
                          width: _ballS,
                          height: _ballS,
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      for (double obstacle in _obstacleFs)
                        Positioned(
                          bottom: 25,
                          left: _boardW * obstacle,
                          child: Container(
                            width: _obstacleW,
                            height: _obstacleH,
                            color: Colors.redAccent,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }

  void _start() {
    _score = 0;

    _timer?.cancel();
    _timer = Timer.periodic(_interval, (_) => _refresh());

    _gameState = _GameState.running;
    setState(() {});
  }

  void _onKeyPressed(KeyboardEvent e) {
    if (e.charCode == 32) {
      if (_gameState == _GameState.running) {
        _jump();
      }
    }
  }

  void _stop() {
    _obstacleFs.clear();
    _ballHeight = 0.0;
    _dHeight = 0.0;
    _obstacleTimer?.cancel();
    _obstacleTimer = null;
    _timer?.cancel();

    _gameState = _GameState.stopped;
    setState(() {});
  }

  void _refresh() {
    for (int i = 0; i < _obstacleFs.length; i++) {
      _obstacleFs[i] -= _dObstacleX;
    }

    _obstacleFs.removeWhere((e) {
      final bool remove = e <= 0.0;
      if (remove) {
        _score++;
      }

      return remove;
    });

    _ballHeight += _dHeight;

    if (_ballHeight > 1.0) {
      _dHeight = -_dHeight;
    }
    if (_ballHeight < 0.0) {
      _dHeight = 0.0;
    }

    _ballHeight = min(_ballHeight, 1.0);
    _ballHeight = max(_ballHeight, 0.0);

    if (_isColliding()) {
      _stop();
      return;
    }

    _obstacleTimer ??= Timer(Duration(seconds: 1 + Random().nextInt(2)), () {
      _obstacleFs.add(1.0);
      _obstacleTimer = null;
    });

    setState(() {});
  }

  void _jump() {
    if (_gameState == _GameState.running) {
      _dHeight = 0.1;
      setState(() {});
    }
  }

  bool _isColliding() {
    for (double obstacleF in _obstacleFs) {
      final double obstacleX = _boardW * obstacleF;
      if (_ballOffset <= obstacleX && obstacleX <= _ballOffset + _ballS) {
        if ((_ballHeightChange * _ballHeight) <= _obstacleH) {
          return true;
        }
      }
    }

    return false;
  }
}
