import 'dart:async';

class AsyncMutex {
  AsyncMutex();

  // region Values

  /// Keeps track of the newest [Future] in the stack.
  Future<dynamic> _next = Future<dynamic>.value(null);

  /// Keeps track of how many futures are in the stack.
  int _counter = 0;

  // endregion

  // region Exposed

  /// Whether there are any [Future]s currently scheduled.
  bool get isOccupied {
    return _counter != 0;
  }

  /// Request [operation] to be run exclusively.
  ///
  /// Waits for all previously requested operations to complete,
  /// then runs the operation and completes the returned future with the
  /// result.
  Future<T> run<T>(Future<T> Function() operation) {
    // Create a Completer that will fire once all current ones are done.
    final Completer<T> completer = Completer<T>();

    // Increase the counter.
    _counter++;

    // Set up actions for when the current future is done.
    _next.whenComplete(() {
      // Execute the new action.
      completer.complete(Future<T>.sync(operation));

      // Decrease the counter.
      _counter--;
    });

    // Assign the new future as the newest one and return it.
    return _next = completer.future;
  }

  /// Waits for all currently requested operations to complete.
  Future<void> waitForAll() {
    final Completer<void> completer = Completer<void>();

    _next.whenComplete(() => completer.complete());

    return completer.future;
  }

// endregion
}
