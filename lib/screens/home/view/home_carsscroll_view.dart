import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tesla_store/screens/home/viewmodel/home_viewmodel.dart';

/// The scrollable list of cars.
///
/// The list is scrollable horizontally.
/// The list is centered on the currently selected car.
/// The list is infinite.
class HomeCarsScroll extends StatefulWidget {
  const HomeCarsScroll({super.key});

  @override
  State<HomeCarsScroll> createState() => _HomeCarsScrollState();
}

class _HomeCarsScrollState extends State<HomeCarsScroll> {
  /// The current page of the [PageView].
  var _currentPage = 0.0;

  /// The [PageController] of the [PageView].
  final _pageController = PageController(
    viewportFraction: 0.5,
    initialPage: 52,
  );

  @override
  void initState() {
    super.initState();
    _pageController.addListener(_scrollListener);
    _currentPage = _pageController.initialPage.toDouble();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.removeListener(_scrollListener);
    _pageController.dispose();
  }

  /// The listener for the [_pageController].
  /// Updates the [_currentPage] when the page changes.
  /// This is needed to update the scale of the images.
  void _scrollListener() {
    setState(() {
      _currentPage = _pageController.page!;
    });
  }

  /// The scale of the image at the given [index].
  /// The scale is calculated based on the [_currentPage].
  double imageScale(int index) {
    final indexDoubleled = index.toDouble();
    final distance = indexDoubleled - _currentPage;

    const factorLeading = 1.8;
    const factorCenter = 2.6;
    const factorTrailing = 0.8;

    //Fuera de rango por encima
    if (distance < -(factorCenter / factorLeading)) {
      return 0.0;
    }
    //Por encima
    if (indexDoubleled < _currentPage) {
      return factorCenter + factorLeading * distance;
    }
    //Fuera de rango por debajo
    if (distance > 1.0) {
      return factorTrailing;
    }
    //Por debajo
    if (indexDoubleled > _currentPage) {
      return factorCenter - ((factorCenter - factorTrailing) * distance);
    }
    //Es el actual
    return factorCenter;
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<HomeViewModel>(context);

    return PageView.builder(
      controller: _pageController,
      itemBuilder: (context, index) {
        return Transform.scale(
          scale: imageScale(index),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 800),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(opacity: animation, child: child);
            },
            child: Stack(
              key: Key(viewModel.modelForIndex(index).imageAsset),
              children: [
                Image.asset(
                  viewModel.modelForIndex(index).imageAsset,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  viewModel.modelForIndex(index).wheelsAsset,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        );
      },
      onPageChanged: (page) => viewModel.index = page,
    );
  }
}
