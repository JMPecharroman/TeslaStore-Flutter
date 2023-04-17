import 'dart:ui';

enum PaintCases {
  deepBlueMetallic(
    key: 'deepBlueMetallic',
    label: 'Deep Blue Metallic',
    color: Color(0xFF0A1A4A),
  ),
  midnightSilverMetallic(
    key: 'midnightSilverMetallic',
    label: 'Midnight Silver Metallic',
    color: Color(0xFF2D2D2D),
  ),
  pearlWhiteMultiCoat(
    key: 'pearlWhiteMultiCoat',
    label: 'Pearl White Multi-Coat',
    color: Color(0xFFE5E5E5),
  ),
  redMultiCoat(
    key: 'redMultiCoat',
    label: 'Red Multi-Coat',
    color: Color(0xFFB92E34),
  ),
  solidBlack(
    key: 'solidBlack',
    label: 'Solid Black',
    color: Color(0xFF000000),
  ),
  ultraRed(
    key: 'ultraRed',
    label: 'Ultra Red',
    color: Color(0xFFB92E34),
  );

  const PaintCases({
    required this.key,
    required this.label,
    required this.color,
  });

  /// The key of the paint.
  final String key;

  /// The label of the paint.
  final String label;

  /// The color of the paint.
  final Color color;
}
