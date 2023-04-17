import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tesla_store/screens/home/view/home_body_view.dart';
import 'package:tesla_store/screens/home/viewmodel/home_viewmodel.dart';

/// The main view of the app.
///
/// The [title] is the title of the app.
class HomeView extends StatefulWidget {
  const HomeView({super.key, required this.title});

  final String title;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>(
      create: (context) => HomeViewModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/tesla_logo.png',
            fit: BoxFit.contain,
            height: 24,
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: const HomeBody(),
      ),
    );
  }
}
