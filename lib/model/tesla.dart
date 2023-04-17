import 'package:tesla_store/model/models.dart';
import 'package:tesla_store/model/paints.dart';
import 'package:tesla_store/model/versions.dart';
import 'package:tesla_store/model/wheels.dart';

class Tesla {
  final ModelCases _model;
  VersionCases _version;
  PaintCases _paint;
  WheelsCases _wheels;

  Tesla.modelS()
      : _model = ModelCases.modelS,
        _version = ModelCases.modelS.versions.first,
        _paint = ModelCases.modelS.versions.first.paints.first,
        _wheels = ModelCases.modelS.versions.first.wheels.first;

  Tesla.model3()
      : _model = ModelCases.model3,
        _version = ModelCases.model3.versions.first,
        _paint = ModelCases.model3.versions.first.paints.first,
        _wheels = ModelCases.model3.versions.first.wheels.first;

  Tesla.modelX()
      : _model = ModelCases.modelX,
        _version = ModelCases.modelX.versions.first,
        _paint = ModelCases.modelX.versions.first.paints.first,
        _wheels = ModelCases.modelX.versions.first.wheels.first;

  Tesla.modelY()
      : _model = ModelCases.modelY,
        _version = ModelCases.modelY.versions.first,
        _paint = ModelCases.modelY.versions.first.paints.first,
        _wheels = ModelCases.modelY.versions.first.wheels.first;

  ModelCases get model => _model;

  VersionCases get version => _version;
  set version(VersionCases version) {
    if (!_model.versions.contains(version)) {
      throw Exception('Invalid version for model');
    }

    _version = version;

    if (!_version.paints.contains(_paint)) {
      _paint = _version.paints.first;
    }

    if (!_version.wheels.contains(_wheels)) {
      _wheels = _version.wheels.first;
    }
  }

  PaintCases get paint => _paint;
  set paint(PaintCases paint) {
    //Validar pintura
    _paint = paint;
  }

  WheelsCases get wheels => _wheels;
  set wheels(WheelsCases wheels) {
    //Validar ruedas
    _wheels = wheels;
  }

  String get imageAsset =>
      'assets/${_model.key}/${_model.key}_front_${_paint.key}.png';

  String get wheelsAsset =>
      'assets/${_model.key}/${_model.key}_front_${_wheels.key}.png';
}

extension TeslaModels on Tesla {
  static List<Tesla> get list {
    return [
      Tesla.modelS(),
      Tesla.model3(),
      Tesla.modelX(),
      Tesla.modelY(),
    ];
  }
}
