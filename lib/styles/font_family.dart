enum FontFamily {
  cpMono,
  kontanter,
  prime;

  String get assetName {
    return switch (this) {
      cpMono => 'CPMono',
      kontanter => 'Kontanter',
      prime => 'Prime',
    };
  }
}
