import 'package:tesla_store/model/paints.dart';
import 'package:tesla_store/model/wheels.dart';

enum VersionCases {
  modelS(
    price: 104990,
    range: 634,
    topSpeed: 250,
    acceleration: 3.2,
    label: 'Model S',
    assetKey: 'modelS',
    paints: [
      PaintCases.pearlWhiteMultiCoat,
      PaintCases.solidBlack,
      PaintCases.ultraRed,
      PaintCases.midnightSilverMetallic,
      PaintCases.deepBlueMetallic,
    ],
    wheels: [
      WheelsCases.tempest19,
      WheelsCases.arachnid21,
    ],
  ),
  modelSPlaid(
    price: 129990,
    range: 600,
    topSpeed: 322,
    acceleration: 2.1,
    label: 'Model S Plaid',
    assetKey: 'modelS',
    paints: [
      PaintCases.pearlWhiteMultiCoat,
      PaintCases.solidBlack,
      PaintCases.ultraRed,
      PaintCases.midnightSilverMetallic,
      PaintCases.deepBlueMetallic,
    ],
    wheels: [
      WheelsCases.tempest19,
      WheelsCases.arachnid21,
    ],
  ),
  model3(
    price: 39990,
    range: 491,
    topSpeed: 225,
    acceleration: 6.1,
    label: 'Model 3',
    assetKey: 'model3',
    paints: [
      PaintCases.pearlWhiteMultiCoat,
      PaintCases.midnightSilverMetallic,
      PaintCases.deepBlueMetallic,
      PaintCases.solidBlack,
      PaintCases.redMultiCoat,
    ],
    wheels: [
      WheelsCases.aero18,
      WheelsCases.sport19,
    ],
  ),
  model3LongRange(
    price: 49990,
    range: 602,
    topSpeed: 233,
    acceleration: 4.4,
    label: 'Model 3 Long Range',
    assetKey: 'model3',
    paints: [
      PaintCases.pearlWhiteMultiCoat,
      PaintCases.midnightSilverMetallic,
      PaintCases.deepBlueMetallic,
      PaintCases.solidBlack,
      PaintCases.redMultiCoat,
    ],
    wheels: [
      WheelsCases.aero18,
      WheelsCases.sport19,
    ],
  ),
  model3Performance(
    price: 53990,
    range: 547,
    topSpeed: 261,
    acceleration: 3.3,
    label: 'Model 3 Performance',
    assetKey: 'model3',
    paints: [
      PaintCases.pearlWhiteMultiCoat,
      PaintCases.midnightSilverMetallic,
      PaintCases.deepBlueMetallic,
      PaintCases.solidBlack,
      PaintCases.redMultiCoat,
    ],
    wheels: [
      WheelsCases.uberturbine20,
    ],
  ),
  modelX(
    price: 113990,
    range: 576,
    topSpeed: 250,
    acceleration: 3.9,
    label: 'Model X',
    assetKey: 'modelX',
    paints: [
      PaintCases.pearlWhiteMultiCoat,
      PaintCases.solidBlack,
      PaintCases.midnightSilverMetallic,
      PaintCases.deepBlueMetallic,
      PaintCases.ultraRed,
    ],
    wheels: [
      WheelsCases.cyberstream20,
      WheelsCases.turbine22,
    ],
  ),
  modelXPlaid(
    price: 133990,
    range: 543,
    topSpeed: 262,
    acceleration: 2.6,
    label: 'Model X Plaid',
    assetKey: 'modelX',
    paints: [
      PaintCases.pearlWhiteMultiCoat,
      PaintCases.solidBlack,
      PaintCases.midnightSilverMetallic,
      PaintCases.deepBlueMetallic,
      PaintCases.ultraRed,
    ],
    wheels: [
      WheelsCases.cyberstream20,
      WheelsCases.turbine22,
    ],
  ),
  modelY(
    price: 45990,
    range: 455,
    topSpeed: 217,
    acceleration: 6.9,
    label: 'Model Y',
    assetKey: 'modelY',
    paints: [
      PaintCases.pearlWhiteMultiCoat,
      PaintCases.midnightSilverMetallic,
      PaintCases.deepBlueMetallic,
      PaintCases.solidBlack,
      PaintCases.redMultiCoat,
    ],
    wheels: [
      WheelsCases.gemini19,
      WheelsCases.induction20,
    ],
  ),
  modelYLongRange(
    price: 53400,
    range: 533,
    topSpeed: 217,
    acceleration: 5.0,
    label: 'Model Y Long Range',
    assetKey: 'modelY',
    paints: [
      PaintCases.pearlWhiteMultiCoat,
      PaintCases.midnightSilverMetallic,
      PaintCases.deepBlueMetallic,
      PaintCases.solidBlack,
      PaintCases.redMultiCoat,
    ],
    wheels: [
      WheelsCases.gemini19,
      WheelsCases.induction20,
    ],
  ),
  modelYPerformance(
    price: 59990,
    range: 514,
    topSpeed: 250,
    acceleration: 3.7,
    label: 'Model Y Performance',
    assetKey: 'modelY',
    paints: [
      PaintCases.pearlWhiteMultiCoat,
      PaintCases.midnightSilverMetallic,
      PaintCases.deepBlueMetallic,
      PaintCases.solidBlack,
      PaintCases.redMultiCoat,
    ],
    wheels: [
      WheelsCases.uberturbine21,
    ],
  );

  const VersionCases({
    required this.price,
    required this.range,
    required this.topSpeed,
    required this.acceleration,
    required this.label,
    required this.assetKey,
    required this.paints,
    required this.wheels,
  });

  /// The price of the car.
  final int price;

  /// The range of the car.
  final int range;

  /// The top speed of the car.
  final int topSpeed;

  /// The acceleration of the car.
  final double acceleration;

  /// The label of the car.
  final String label;

  /// The asset key of the car.
  final String assetKey;

  /// The paints of the car.
  final List<PaintCases> paints;

  /// The wheels of the car.
  final List<WheelsCases> wheels;
}
