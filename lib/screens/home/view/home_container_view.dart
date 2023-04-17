import 'package:flutter/material.dart';

/// A container with a border and padding.
///
/// This widget is used to wrap the content of the some items in [HomeView].
class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key, required this.child});

  /// The child widget to wrap.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 14.0,
        vertical: 8.0,
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.grey[300]!,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 16.0,
          ),
          child: child,
        ),
      ),
    );
  }
}
