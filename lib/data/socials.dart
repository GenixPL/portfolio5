enum Social {
  // The order does matter because we iterate through the values!
  github,
  stackOverflow,
  spotify,
  goodreads,
  facebook;

  static const String _iconBasePath = 'assets/icons/social';

  String get icon {
    final String fileName = switch (this) {
      facebook => 'facebook',
      github => 'github',
      goodreads => 'goodreads',
      stackOverflow => 'stack',
      spotify => 'spotify',
    };

    return '$_iconBasePath/$fileName.svg';
  }

  String get url {
    return switch (this) {
      facebook => 'https://www.facebook.com/profile.php?id=100000928396837',
      github => 'https://github.com/GenixPL',
      goodreads => 'https://www.goodreads.com/user/show/86850107-lukasz',
      stackOverflow => 'https://stackoverflow.com/users/12372263/genix',
      spotify => 'https://open.spotify.com/user/47jyt37hiwy2ry4ao3y8bdtt7?si=23f4159897244a3c',
    };
  }
}
