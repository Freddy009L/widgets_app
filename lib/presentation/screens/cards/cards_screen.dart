import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


class CardsScreen extends StatelessWidget {
  const CardsScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CardsScreen"),
      ),
      body:  const Placeholder(),
    );
  }
}