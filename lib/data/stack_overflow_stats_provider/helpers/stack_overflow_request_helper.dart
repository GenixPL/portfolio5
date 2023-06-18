import 'package:portfolio5/data/_data.dart';
// import 'package:http/http.dart';
// import 'package:portfolio5/utils/_utils.dart';

class StackOverflowRequestHelper {
  const StackOverflowRequestHelper();

  // static const String _url = 'https://api.stackexchange.com/2.3/users/12372263?site=stackoverflow';

  // static const Duration _timeout = Duration(seconds: 10);

  // TODO(genix): clean up
  // TODO(genix): add logger
  Future<StackOverflowStats?> getStats() async {
    // final Response? response;
    // try {
    //   response = await get(Uri.parse(_url)).nullTimeout(_timeout);
    // } catch (e) {
    //   print('getStats, failed to get the data! error: $e');
    //   return null;
    // }
    // if (response == null) {
    //   return null;
    // }
    //
    // if (response.statusCode != 200) {
    //   print('getStats, status: ${response.statusCode}');
    //   print('getStats, body: ${response.body}');
    //   return null;
    // }
    //
    // final Map<String, dynamic>? bodyMap = response.bodyAsJsonMap;
    // if (bodyMap == null) {
    //   return null;
    // }

    final Map<String, dynamic> bodyMap = {
      "items": [
        {
          "badge_counts": {
            "bronze": 5,
            "silver": 1,
            "gold": 0
          },
          "account_id": 17097571,
          "is_employee": false,
          "last_modified_date": 1686429823,
          "last_access_date": 1687121222,
          "reputation_change_year": 77,
          "reputation_change_quarter": 77,
          "reputation_change_month": 77,
          "reputation_change_week": 35,
          "reputation_change_day": 35,
          "reputation": 138,
          "creation_date": 1573729295,
          "user_type": "registered",
          "user_id": 12372263,
          "website_url": "https://genixpl.github.io",
          "link": "https://stackoverflow.com/users/12372263/genix",
          "profile_image": "https://i.stack.imgur.com/9gK3m.jpg?s=256&g=1",
          "display_name": "Genix"
        }
      ],
      "has_more": false,
      "quota_max": 300,
      "quota_remaining": 298
    };

    final StackOverflowStats stats;
    try {
      stats = StackOverflowStats(
        bronzeBadges: bodyMap['items'][0]['badge_counts']['bronze'],
        silverBadges: bodyMap['items'][0]['badge_counts']['silver'],
        goldBadges: bodyMap['items'][0]['badge_counts']['gold'],
        reputation: bodyMap['items'][0]['reputation'],
      );
    } catch (e) {
      print('getStats, failed to parse! error: $e');
      return null;
    }

    return stats;
  }
}
