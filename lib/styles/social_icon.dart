enum SocialIcon {
  github,
  stackOverflow,
  goodreads,
  facebook;

  static const String _basePath = 'assets/icons/social';

  // TODO(genix): unify icon sizes

  String get assetPath {
    final String fileName = switch (this) {
      facebook => 'facebook.svg',
      github => 'github.svg',
      goodreads => 'goodreads.svg',
      stackOverflow => 'stack.svg',
    };

    return '$_basePath/$fileName';
  }
}
