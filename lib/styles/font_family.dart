enum FontFamily {
  cpMono,
  kontanter,
  prime;

  String assetName() {
    return switch (this) {
      cpMono => 'CPMono',
      kontanter => 'Kontanter',
      prime => 'Prime',
    };
  }
}
