import 'package:tesla_store/model/versions.dart';

enum ModelCases {
  modelS(
    key: 'modelS',
    label: 'Model S',
    versions: [
      VersionCases.modelS,
      VersionCases.modelSPlaid,
    ],
  ),
  model3(
    key: 'model3',
    label: 'Model 3',
    versions: [
      VersionCases.model3,
      VersionCases.model3LongRange,
      VersionCases.model3Performance,
    ],
  ),
  modelX(
    key: 'modelX',
    label: 'Model X',
    versions: [
      VersionCases.modelX,
      VersionCases.modelXPlaid,
    ],
  ),
  modelY(
    key: 'modelY',
    label: 'Model Y',
    versions: [
      VersionCases.modelY,
      VersionCases.modelYLongRange,
      VersionCases.modelYPerformance,
    ],
  );

  const ModelCases({
    required this.key,
    required this.label,
    required this.versions,
  });

  /// The key of the model.
  final String key;

  /// The label of the model.
  final String label;

  /// The versions of the model.
  final List<VersionCases> versions;
}
