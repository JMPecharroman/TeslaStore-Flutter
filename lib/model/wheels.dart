enum WheelsCases {
  aero18(
    key: 'aero18',
    asset: 'assets/wheels/aero18.png',
  ),
  arachnid21(
    key: 'arachnid21',
    asset: 'assets/wheels/arachnid21.png',
  ),
  cyberstream20(
    key: 'cyberstream20',
    asset: 'assets/wheels/cyberstream20.png',
  ),
  gemini19(
    key: 'gemini19',
    asset: 'assets/wheels/gemini19.png',
  ),
  induction20(
    key: 'induction20',
    asset: 'assets/wheels/induction20.png',
  ),
  sport19(
    key: 'sport19',
    asset: 'assets/wheels/sport19.png',
  ),
  tempest19(
    key: 'tempest19',
    asset: 'assets/wheels/tempest19.png',
  ),
  turbine22(
    key: 'turbine22',
    asset: 'assets/wheels/turbine22.png',
  ),
  uberturbine20(
    key: 'uberturbine20',
    asset: 'assets/wheels/uberturbine20.png',
  ),
  uberturbine21(
    key: 'uberturbine21',
    asset: 'assets/wheels/uberturbine21.png',
  );

  const WheelsCases({
    required this.key,
    required this.asset,
  });

  /// The key of the wheel.
  final String key;

  /// The asset of the wheel.
  final String asset;
}
