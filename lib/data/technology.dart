enum Technology {
  dart,
  java,
  kotlin,
  swift,
  rs,
  objc,
  cpp,
  csharp,
  c,
  r,
  matlab,
  python,
  ts,
  js,
  go;

  static const String _logoBasePath = 'assets/icons/technologies';

  String get fullName {
    return switch (this) {
      dart => 'Dart',
      java => 'Java',
      kotlin => 'Kotlin',
      swift => 'Swift',
      rs => 'RenderScript',
      objc => 'Objective-C',
      cpp => 'C++',
      csharp => 'C#',
      c => 'C',
      r => 'R',
      matlab => 'MATLAB',
      python => 'Python',
      ts => 'TypeScript',
      js => 'JavaScript 💩',
      go => 'Go',
    };
  }

  String get wikiUrl {
    return switch (this) {
      dart => 'https://en.wikipedia.org/wiki/Dart_(programming_language)',
      java => 'https://en.wikipedia.org/wiki/Java_(programming_language)',
      kotlin => 'https://en.wikipedia.org/wiki/Kotlin_(programming_language)',
      swift => 'https://en.wikipedia.org/wiki/Swift_(programming_language)',
      rs => 'https://en.wikipedia.org/wiki/RenderScript',
      objc => 'https://en.wikipedia.org/wiki/Objective-C',
      cpp => 'https://en.wikipedia.org/wiki/C%2B%2B',
      csharp => 'https://en.wikipedia.org/wiki/C_Sharp_(programming_language)',
      c => 'https://en.wikipedia.org/wiki/C_(programming_language)',
      r => 'https://en.wikipedia.org/wiki/R_(programming_language)',
      matlab => 'https://en.wikipedia.org/wiki/MATLAB',
      python => 'https://en.wikipedia.org/wiki/Python_(programming_language)',
      ts => 'https://en.wikipedia.org/wiki/TypeScript',
      js => 'https://en.wikipedia.org/wiki/JavaScript',
      go => 'https://en.wikipedia.org/wiki/Go_(programming_language)',
    };
  }

  String? get logo {
    final String? icon = switch (this) {
      dart => 'dart',
      java => 'java',
      kotlin => 'kotlin',
      swift => 'swift',
      rs => null,
      objc => 'objc',
      cpp => 'cpp',
      csharp => 'csharp',
      c => 'c',
      r => 'r',
      matlab => 'matlab',
      python => 'python',
      ts => 'ts',
      js => 'js',
      go => 'go',
    };
    if (icon == null) {
      return null;
    }

    return '$_logoBasePath/$icon.svg';
  }
}

enum Framework {
  flutter,
  android,
  ios,
  vue,
  nativeScript,
  reactNative,
  angular,
  firebase,
  sql,
  rest,
  graphql,
  grpc,
  mqtt,
  html,
  css,
  travis,
  fastlane,
  figma,
}
