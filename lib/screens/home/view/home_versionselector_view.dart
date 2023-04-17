import 'package:flutter/material.dart';
import 'package:tesla_store/model/versions.dart';
import 'package:tesla_store/screens/home/view/home_container_view.dart';

/// Selector for the Tesla model version.
///
/// The [version] is the current version.
/// The [onTapPrev] is the callback to be called when the previous version is
/// selected.
class HomeVersionSelector extends StatelessWidget {
  const HomeVersionSelector(
      {super.key,
      required this.version,
      required this.onTapPrev,
      required this.onTapNext});

  final VersionCases version;
  final Function onTapPrev;
  final Function onTapNext;

  @override
  Widget build(BuildContext context) {
    return HomeContainer(
      child: Row(
        children: [
          GestureDetector(
            onTap: () => onTapPrev(),
            child: const Icon(
              Icons.arrow_back_ios,
              size: 24,
            ),
          ),
          const Spacer(),
          Text(
            version.label,
            style: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => onTapNext(),
            child: const Icon(
              Icons.arrow_forward_ios,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
