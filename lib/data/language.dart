enum Language {
  english,
  polish,
  norwegian,
  german;

  static const String _iconBasePath = 'assets/icons/languages';

  // Source: https://flagicons.lipis.dev
  String get flagIcon {
    return switch (this) {
      english => '$_iconBasePath/gb.svg',
      polish => '$_iconBasePath/pl.svg',
      norwegian => '$_iconBasePath/no.svg',
      german => '$_iconBasePath/de.svg',
    };
  }

  String get level {
    return switch (this) {
      english => 'C2',
      polish => 'native',
      norwegian => 'A2 - B1',
      german => 'A2',
    };
  }
}
