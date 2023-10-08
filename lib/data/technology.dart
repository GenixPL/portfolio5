enum TechnologyCategory {
  language(text: 'Programming languages'),
  system(text: 'Systems'),
  framework(text: 'Frameworks'),
  db(text: 'Databases'),
  communication(text: 'Communication'),
  distribution(text: 'Distribution'),
  integrationAndDeployment(text: 'Integration & Deployment'),
  design(text: 'Design'),
  other(text: 'Other');

  const TechnologyCategory({
    required this.text,
  });

  final String text;
}

enum Technology {
  // ORDER MATTERS!

  // region Languages
  dart(
    fullName: 'Dart',
    infoUrl: 'https://en.wikipedia.org/wiki/Dart_(programming_language)',
    logo: 'dart',
    category: TechnologyCategory.language,
  ),
  java(
    fullName: 'Java',
    infoUrl: 'https://en.wikipedia.org/wiki/Java_(programming_language)',
    logo: 'java',
    category: TechnologyCategory.language,
  ),
  kotlin(
    fullName: 'Kotlin',
    infoUrl: 'https://en.wikipedia.org/wiki/Kotlin_(programming_language)',
    logo: 'kotlin',
    category: TechnologyCategory.language,
  ),
  swift(
    fullName: 'Swift',
    infoUrl: 'https://en.wikipedia.org/wiki/Swift_(programming_language)',
    logo: 'swift',
    category: TechnologyCategory.language,
  ),
  rs(
    fullName: 'RenderScript',
    infoUrl: 'https://en.wikipedia.org/wiki/RenderScript',
    logo: null,
    category: TechnologyCategory.language,
  ),
  objc(
    fullName: 'Objective-C',
    infoUrl: 'https://en.wikipedia.org/wiki/Objective-C',
    logo: 'objc',
    category: TechnologyCategory.language,
  ),
  cpp(
    fullName: 'C++',
    infoUrl: 'https://en.wikipedia.org/wiki/C%2B%2B',
    logo: 'cpp',
    category: TechnologyCategory.language,
  ),
  csharp(
    fullName: 'C#',
    infoUrl: 'https://en.wikipedia.org/wiki/C_Sharp_(programming_language)',
    logo: 'csharp',
    category: TechnologyCategory.language,
  ),
  c(
    fullName: 'C',
    infoUrl: 'https://en.wikipedia.org/wiki/C_(programming_language)',
    logo: 'c',
    category: TechnologyCategory.language,
  ),
  r(
    fullName: 'R',
    infoUrl: 'https://en.wikipedia.org/wiki/R_(programming_language)',
    logo: 'r',
    category: TechnologyCategory.language,
  ),
  matlab(
    fullName: 'MATLAB',
    infoUrl: 'https://en.wikipedia.org/wiki/MATLAB',
    logo: 'matlab',
    category: TechnologyCategory.language,
  ),
  python(
    fullName: 'Python',
    infoUrl: 'https://en.wikipedia.org/wiki/Python_(programming_language)',
    logo: 'python',
    category: TechnologyCategory.language,
  ),
  ts(
    fullName: 'TypeScript',
    infoUrl: 'https://en.wikipedia.org/wiki/TypeScript',
    logo: 'ts',
    category: TechnologyCategory.language,
  ),
  go(
    fullName: 'Go',
    infoUrl: 'https://en.wikipedia.org/wiki/Go_(programming_language)',
    logo: 'go',
    category: TechnologyCategory.language,
  ),
  js(
    fullName: 'JavaScript 💩',
    infoUrl: 'https://en.wikipedia.org/wiki/JavaScript',
    logo: 'js',
    category: TechnologyCategory.language,
  ),
  // endregion

  // region Systems
  android(
    fullName: 'Android',
    infoUrl: 'https://en.wikipedia.org/wiki/Android_(operating_system)',
    logo: 'android',
    category: TechnologyCategory.system,
  ),
  ios(
    fullName: 'iOS',
    infoUrl: 'https://en.wikipedia.org/wiki/IOS',
    logo: 'ios',
    category: TechnologyCategory.system,
  ),
  watchOs(
    fullName: 'watchOS',
    infoUrl: 'https://en.wikipedia.org/wiki/WatchOS',
    logo: null, // TODO(genix): add
    category: TechnologyCategory.system,
  ),
  // endregion

  // region Frameworks
  flutter(
    fullName: 'Flutter',
    infoUrl: 'https://en.wikipedia.org/wiki/Flutter_(software)',
    logo: 'flutter',
    category: TechnologyCategory.framework,
  ),
  vue(
    fullName: 'Vue',
    infoUrl: 'https://en.wikipedia.org/wiki/Vue.js',
    logo: 'vue',
    category: TechnologyCategory.framework,
  ),
  nativeScript(
    fullName: 'NativeScript',
    infoUrl: 'https://en.wikipedia.org/wiki/NativeScript',
    logo: 'nativescript',
    category: TechnologyCategory.framework,
  ),
  // endregion

  // region Db
  nosql(
    fullName: 'NoSQL',
    infoUrl: 'https://en.wikipedia.org/wiki/NoSQL',
    logo: null, // TODO(genix): add
    category: TechnologyCategory.db,
  ),
  firestore(
    fullName: 'Cloud Firestore',
    infoUrl: 'https://firebase.google.com/docs/firestore',
    logo: null, // TODO(genix): add
    category: TechnologyCategory.db,
  ),
  sql(
    fullName: 'SQL',
    infoUrl: 'https://en.wikipedia.org/wiki/SQL',
    logo: 'sql',
    category: TechnologyCategory.db,
  ),
  sqLite(
    fullName: 'SQLite',
    infoUrl: 'https://en.wikipedia.org/wiki/SQLite',
    logo: null, // TODO(genix): add
    category: TechnologyCategory.db,
  ),
  // endregion

  // region Communication
  rest(
    fullName: 'REST',
    infoUrl: 'https://en.wikipedia.org/wiki/Representational_state_transfer',
    logo: 'rest',
    category: TechnologyCategory.communication,
  ),
  graphql(
    fullName: 'GraphQL',
    infoUrl: 'https://en.wikipedia.org/wiki/GraphQL',
    logo: 'graphql',
    category: TechnologyCategory.communication,
  ),
  grpc(
    fullName: 'gRPC',
    infoUrl: 'https://en.wikipedia.org/wiki/GRPC',
    logo: 'grpc',
    category: TechnologyCategory.communication,
  ),
  mqtt(
    fullName: 'MQTT',
    infoUrl: 'https://en.wikipedia.org/wiki/MQTT',
    logo: 'mqtt',
    category: TechnologyCategory.communication,
  ),
  bt(
    fullName: 'Bluetooth',
    infoUrl: 'https://en.wikipedia.org/wiki/Bluetooth',
    logo: null, // TODO(genix): add
    category: TechnologyCategory.communication,
  ),
  // endregion

  // region Distribution
  googlePlayStore(
    fullName: 'Google Play Store',
    infoUrl: 'https://en.wikipedia.org/wiki/Google_Play',
    logo: null, // TODO(genix): add
    category: TechnologyCategory.distribution,
  ),
  appStore(
    fullName: 'App Store',
    infoUrl: 'https://en.wikipedia.org/wiki/App_Store_(Apple)',
    logo: null, // TODO(genix): add
    category: TechnologyCategory.distribution,
  ),
  firebaseAppDistribution(
    fullName: 'Firebase App Distribution',
    infoUrl: 'https://firebase.google.com/docs/app-distribution',
    logo: null, // TODO(genix): add
    category: TechnologyCategory.distribution,
  ),
  // endregion

  // region Integration & Deployment
  travis(
    fullName: 'Travis CI',
    infoUrl: 'https://en.wikipedia.org/wiki/Travis_CI',
    logo: 'travis',
    category: TechnologyCategory.integrationAndDeployment,
  ),
  fastlane(
    fullName: 'fastlane',
    infoUrl: 'https://fastlane.tools',
    logo: 'fastlane',
    category: TechnologyCategory.integrationAndDeployment,
  ),
  githubActions(
    fullName: 'Github Actions',
    infoUrl: 'https://github.com/features/actions',
    logo: 'githubactions',
    category: TechnologyCategory.integrationAndDeployment,
  ),
  // endregion

  // region Design
  figma(
    fullName: 'Figma',
    infoUrl: 'https://en.wikipedia.org/wiki/Figma_(software)',
    logo: 'figma',
    category: TechnologyCategory.design,
  ),
  paint(
    fullName: 'Paint',
    infoUrl: 'https://en.wikipedia.org/wiki/Microsoft_Paint',
    logo: 'paint',
    category: TechnologyCategory.design,
  ),
  // endregion

  // region Other
  firebaseDynamicLinks(
    fullName: 'Firebase Dynamic Links',
    infoUrl: 'https://firebase.google.com/docs/dynamic-links',
    logo: null, // TODO(genix): add
    category: TechnologyCategory.other,
  ),
  html(
    fullName: 'HTML',
    infoUrl: 'https://en.wikipedia.org/wiki/HTML',
    logo: 'html',
    category: TechnologyCategory.other,
  ),
  css(
    fullName: 'CSS',
    infoUrl: 'https://en.wikipedia.org/wiki/CSS',
    logo: 'css',
    category: TechnologyCategory.other,
  );
  // endregion

  const Technology({
    required this.fullName,
    required this.infoUrl,
    required this.logo,
    required this.category,
  });

  // region Values

  static const String _logoBasePath = 'assets/icons/technologies';

  final String fullName;

  final String infoUrl;

  @Deprecated('Use logoFull!')
  final String? logo;

  final TechnologyCategory category;

  // endregion

  String? get logoFull {
    // ignore: deprecated_member_use_from_same_package
    final String? icon = logo;
    if (icon == null) {
      return null;
    }

    return '$_logoBasePath/$icon.svg';
  }
}
