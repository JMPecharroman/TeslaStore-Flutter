import 'package:flutter/material.dart';
import 'package:tesla_store/model/tesla.dart';
import 'package:tesla_store/model/paints.dart';
import 'package:tesla_store/model/wheels.dart';

/// The view model for the [HomeView].
class HomeViewModel extends ChangeNotifier {
  /// The list of Tesla models.
  final _models = TeslaModels.list;

  /// The index of the currently selected Tesla model.
  int _index = 0;

  HomeViewModel();

  /// Get the list of Tesla models.
  List<Tesla> get models => _models;

  /// Get the index of the currently selected Tesla model.
  int get index => _index;

  /// Set the index of the currently selected Tesla model.
  set index(int value) {
    _index = value % _models.length;
    notifyListeners();
  }

  /// Change the paint of the car to the passed [paint]
  colorPressed(PaintCases paint) {
    selectedCar.paint = paint;
    notifyListeners();
  }

  /// Get the currently selected Tesla model.
  Tesla get selectedCar => _models[_index % _models.length];

  /// Get the Tesla model at the given [index].
  ///
  /// If the [index] is out of bounds, the model will be
  /// selected from the beginning of the list.
  Tesla modelForIndex(int index) => _models[index % _models.length];

  /// Change the model of the car to the next one
  /// in the list of models.
  ///
  /// If the current model is the first one, the last one
  /// will be selected.
  /// If the current model is the last one, the first one
  /// will be selected.
  versionNextPressed() {
    final versions = selectedCar.model.versions;
    final index = versions.indexOf(selectedCar.version);

    selectedCar.version =
        index == versions.length - 1 ? versions.first : versions[index + 1];
    notifyListeners();
  }

  /// Change the version of the car to the previous one
  /// in the list of versions.
  ///
  /// If the current version is the first one, the last one
  /// will be selected.
  /// If the current version is the last one, the first one
  /// will be selected.
  versionPrevPressed() {
    final versions = selectedCar.model.versions;
    final index = versions.indexOf(selectedCar.version);

    selectedCar.version = index == 0 ? versions.last : versions[index - 1];
    notifyListeners();
  }

  /// Change the wheels of the car
  ///
  /// [wheels] The wheels to change to
  wheelsPressed(WheelsCases wheels) {
    selectedCar.wheels = wheels;
    notifyListeners();
  }
}
