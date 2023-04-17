import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tesla_store/screens/home/view/home_carsscroll_view.dart';
import 'package:tesla_store/screens/home/view/home_grid_view.dart';
import 'package:tesla_store/screens/home/view/home_paintselector_view.dart';
import 'package:tesla_store/screens/home/view/home_versionselector_view.dart';
import 'package:tesla_store/screens/home/view/home_wheelsselector_view.dart';
import 'package:tesla_store/screens/home/viewmodel/home_viewmodel.dart';

/// The body of the [HomeView].
///
/// This widget is responsible for displaying the content of the
/// [HomeView].
///
/// It uses the [HomeViewModel] to get the data to display.
class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<HomeViewModel>(context);

    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                bottom: 12.0,
              ),
              child: Text(
                viewModel.selectedCar.model.label,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 180,
              child: HomeCarsScroll(),
            ),
            const SizedBox(height: 16),
            HomeVersionSelector(
              version: viewModel.selectedCar.version,
              onTapPrev: () => viewModel.versionPrevPressed(),
              onTapNext: () => viewModel.versionNextPressed(),
            ),
            HomeGrid(
              tesla: viewModel.selectedCar,
            ),
            HomePaintSelector(
              paints: viewModel.selectedCar.version.paints,
              onTap: (paint) => viewModel.colorPressed(paint),
            ),
            HomeWheelsSelector(
              wheels: viewModel.selectedCar.version.wheels,
              onTap: (wheels) => viewModel.wheelsPressed(wheels),
            ),
          ],
        ),
      ),
    );
  }
}
