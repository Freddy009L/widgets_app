import 'package:flutter/material.dart';
import 'dart:math' show Random;


class AnimatedScreens extends StatefulWidget {

  static const name = 'animated_screens';
  const AnimatedScreens({super.key});

  @override
  State<AnimatedScreens> createState() => _AnimatedScreensState();
}

class _AnimatedScreensState extends State<AnimatedScreens> {

  double width = 50;
  double height = 50;
  Color color = Colors.indigo;
  double borderRadius = 10.0;

  void changeShape() {
    final random = Random();

    width = random.nextInt(300) + 50;
     width = random.nextInt(300) + 50;
     //color 
     borderRadius = random.nextInt(300) + 50;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),

      body: Center(
        child: AnimatedContainer(
          duration: Duration(microseconds: 400),
          curve: Curves.elasticInOut,
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: changeShape,
      child:  Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}