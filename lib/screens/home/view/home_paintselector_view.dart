import 'package:flutter/material.dart';
import 'package:tesla_store/model/paints.dart';
import 'package:tesla_store/screens/home/view/home_container_view.dart';

/// Selector for the paint color.
///
/// The [paints] are the list of available paints.
/// The [onTap] is the callback to be called when a paint is selected.
class HomePaintSelector extends StatelessWidget {
  const HomePaintSelector(
      {super.key, required this.paints, required this.onTap});

  final List<PaintCases> paints;
  final Function(PaintCases) onTap;

  @override
  Widget build(BuildContext context) {
    return HomeContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            'Pintura',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          for (PaintCases paint in paints)
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 6.0,
              ),
              child: GestureDetector(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[600]!,
                      width: 2,
                    ),
                    color: paint.color,
                    shape: BoxShape.circle,
                  ),
                ),
                onTap: () => onTap(paint),
              ),
            ),
        ],
      ),
    );
  }
}
