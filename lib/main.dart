import 'package:flutter/material.dart';
import 'package:tesla_store/screens/home/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tesla Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(title: 'Tesla Store'),
    );
  }
}
