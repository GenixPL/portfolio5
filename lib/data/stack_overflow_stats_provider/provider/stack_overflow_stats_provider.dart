import 'package:flutter/foundation.dart';
import 'package:portfolio5/data/_data.dart';
import 'package:portfolio5/utils/_utils.dart';

class StackOverflowStatsProvider extends ChangeNotifier {
  StackOverflowStatsProvider();

  final StackOverflowRequestHelper _requestHelper = const StackOverflowRequestHelper();

  final AsyncMutex _fetchMutex = AsyncMutex();

  StackOverflowStats? _stats;

  StackOverflowStats? get stats {
    return _stats;
  }

  Future<StackOverflowStats?> fetch() async {
    return _fetchMutex.run(() async {
      final StackOverflowStats? stats = await _requestHelper.getStats();
      if (stats == null) {
        _stats = null;
        notifyListeners();
        print('fetch, null data!');
        return null;
      }

      _stats = stats;
      notifyListeners();

      return stats;
    });
  }

  Future<StackOverflowStats?> optimisedFetch() async {
    return _fetchMutex.run(() async {
      if (_stats != null) {
        return _stats;
      }

      final StackOverflowStats? stats = await _requestHelper.getStats();
      if (stats == null) {
        _stats = null;
        notifyListeners();
        print('fetch, null data!');
        return null;
      }

      _stats = stats;
      notifyListeners();

      return stats;
    });
  }
}
