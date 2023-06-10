import 'package:flutter/foundation.dart';
import 'package:portfolio5/data/_data.dart';
import 'package:portfolio5/utils/async_mutex.dart';

class GithubStatsProvider extends ChangeNotifier {
  GithubStatsProvider();

  final GithubRequestHelper _requestHelper = const GithubRequestHelper();

  final AsyncMutex _fetchMutex = AsyncMutex();

  GithubContributionCalendarRaw? _calendarRaw;

  GithubContributionCalendarRaw? get calendarRaw {
    return _calendarRaw;
  }

  Future<GithubContributionCalendarRaw?> fetch() async {
    return _fetchMutex.run(() async {
      final GithubContributionCalendarRaw? calendarRaw = await _requestHelper.getContributionsCalendar();
      if (calendarRaw == null) {
        _calendarRaw = calendarRaw;
        notifyListeners();
        print('fetch, null data!');
        return null;
      }

      _calendarRaw = calendarRaw;
      notifyListeners();

      return calendarRaw;
    });
  }

  Future<GithubContributionCalendarRaw?> optimisedFetch() async {
    return _fetchMutex.run(() async {
      if (_calendarRaw != null) {
        return _calendarRaw;
      }

      final GithubContributionCalendarRaw? calendarRaw = await _requestHelper.getContributionsCalendar();
      if (calendarRaw == null) {
        _calendarRaw = calendarRaw;
        notifyListeners();
        print('fetch, null data!');
        return null;
      }

      _calendarRaw = calendarRaw;
      notifyListeners();

      return calendarRaw;
    });
  }
}
