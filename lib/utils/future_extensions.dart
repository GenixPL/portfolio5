import 'dart:async';

extension FutureExtensions<T> on Future<T?> {
  /// Timeouts out a Future that returns null after specified [timeLimit].
  Future<T?> nullTimeout(Duration timeLimit) async {
    try {
      // Don't remove the async because the exception will be thrown outside.
      return await timeout(
        timeLimit,
        onTimeout: () => throw '',
      );
    } catch (e) {
      return Future<T?>.value(null);
    }
  }
}
