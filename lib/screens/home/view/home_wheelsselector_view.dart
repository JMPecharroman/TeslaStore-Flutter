import 'package:flutter/material.dart';
import 'package:tesla_store/model/wheels.dart';
import 'package:tesla_store/screens/home/view/home_container_view.dart';

/// Selector for the Tesla model wheels.
///
/// The [wheels] is the list of wheels.
/// The [onTap] is the callback to be called when a wheel is selected.
class HomeWheelsSelector extends StatelessWidget {
  const HomeWheelsSelector({
    super.key,
    required this.wheels,
    required this.onTap,
  });

  final List<WheelsCases> wheels;
  final Function(WheelsCases) onTap;

  @override
  Widget build(BuildContext context) {
    return HomeContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            'Llantas',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          for (WheelsCases wheel in wheels)
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 6.0,
              ),
              child: GestureDetector(
                child: Container(
                  width: 42,
                  height: 42,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    wheel.asset,
                    fit: BoxFit.fill,
                  ),
                ),
                onTap: () => onTap(wheel),
              ),
            ),
        ],
      ),
    );
  }
}
