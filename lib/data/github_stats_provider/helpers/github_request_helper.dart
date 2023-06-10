import 'dart:convert';

import 'package:portfolio5/data/_data.dart';
import 'package:http/http.dart';
import 'package:portfolio5/utils/_utils.dart';

class GithubRequestHelper {
  const GithubRequestHelper();

  static const String _url = 'https://api.github.com/graphql';

  // Please don't steal it, it has literally no permissions...
  static const String _authToken = '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';

  static const Duration _timeout = Duration(seconds: 10);

  // TODO(genix): clean up
  // TODO(genix): add logger
  Future<GithubContributionCalendarRaw?> getContributionsCalendar() async {
    final Response? response;
    try {
      response = await post(
        Uri.parse(_url),
        headers: <String, String>{
          'Authorization': 'token $_authToken',
          'Content-Type': 'application/json',
        },
        body:
          jsonEncode(<String, String>{
        'query': '''
        
          { 
    user(login: "genixpl") {
    contributionsCollection {
      contributionCalendar {
        totalContributions
        weeks {
          contributionDays {
            contributionCount
            weekday
            date
          }
        }
      }
    }
  }
}
        
      '''
      }),
      ).nullTimeout(_timeout);
    } catch (e) {
      print('getContributionsCalendar, failed to get the data! error: $e');
      return null;
    }
    if (response == null) {
      return null;
    }

    if (response.statusCode != 200) {
      print('getContributionsCalendar, status: ${response.statusCode}');
      print('getContributionsCalendar, body: ${response.body}');
      return null;
    }

    final Map<String, dynamic>? bodyMap = response.bodyAsJsonMap;
    if (bodyMap == null) {
      return null;
    }

    final GithubContributionCalendarRaw calendarRaw;
    try {
      calendarRaw = GithubContributionCalendarRaw.fromJson(
          bodyMap['data']['user']['contributionsCollection']['contributionCalendar']);
    } catch (e, stc) {
      print('getContributionsCalendar, failed to parse! error: $e');
      return null;
    }

    return calendarRaw;
  }
}
