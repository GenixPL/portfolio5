import 'package:portfolio5/styles/_styles.dart';

enum Social {
  // The order does matter because we iterate through the values!
  github,
  stackOverflow,
  facebook,

  goodreads;

  SocialIcon get icon {
    return switch (this) {
      facebook => SocialIcon.facebook,
      github => SocialIcon.github,
      goodreads => SocialIcon.goodreads,
      stackOverflow => SocialIcon.stackOverflow,
    };
  }

  String get url {
    return switch (this) {
      facebook => 'https://www.facebook.com/profile.php?id=100000928396837',
      github => 'https://github.com/GenixPL',
      goodreads => 'https://www.goodreads.com/user/show/86850107-lukasz',
      stackOverflow => 'https://stackoverflow.com/users/12372263/genix',
    };
  }
}
