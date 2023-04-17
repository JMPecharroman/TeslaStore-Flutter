import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tesla_store/model/tesla.dart';
import 'package:tesla_store/screens/home/view/home_container_view.dart';

/// The grid that displays the Tesla model information.
///
/// The [tesla] is the Tesla model to display.
class HomeGrid extends StatelessWidget {
  const HomeGrid({super.key, required this.tesla});

  final Tesla tesla;

  @override
  Widget build(BuildContext context) {
    return HomeContainer(
      child: Column(
        children: [
          _HomeGridRow(
            children: [
              _HomeGridItem(
                title: NumberFormat.simpleCurrency(
                  locale: "es_ES",
                  decimalDigits: 0,
                ).format(tesla.version.price),
                title2: "",
                subtitle: "Precio",
              ),
              _HomeGridItem(
                title: tesla.version.range,
                title2: "kms",
                subtitle: "Autonomía (WLTP)",
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          _HomeGridRow(
            children: [
              _HomeGridItem(
                title: tesla.version.topSpeed,
                title2: "km/h",
                subtitle: "Velocidad máxima",
              ),
              _HomeGridItem(
                title: tesla.version.acceleration,
                title2: "s",
                subtitle: "0-100 km/h",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _HomeGridRow extends StatelessWidget {
  const _HomeGridRow({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: children,
    );
  }
}

class _HomeGridItem extends StatelessWidget {
  const _HomeGridItem({
    required this.title,
    required this.title2,
    required this.subtitle,
  });

  final Object title;
  final String title2;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              text: title.toString(),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: " $title2",
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
