import 'package:flutter/material.dart';

const cards = <Map<String,dynamic>> [
{'elevation': 0.0, 'label': 'Elevation 0'},
{'elevation': 1.0, 'label': 'Elevation 1'},
{'elevation': 2.0, 'label': 'Elevation 2'},
{'elevation': 3.0, 'label': 'Elevation 3'},
{'elevation': 4.0, 'label': 'Elevation 4'},
{'elevation': 5.0, 'label': 'Elevation 5'},
];


class CardsScreen extends StatelessWidget {

  static String name = "card_screens";

  const CardsScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CardsScreen"),
      ),
      body:  _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
      
          ...cards.map((card) => _CardType1(
            label: card['label'] as String,
            elevation: card['elevation'] as double,
            
          )),
           ...cards.map((card) => _CardType2(
            label: card['label'] as String,
            elevation: card['elevation'] as double,
            
          )),
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  
  final String label;
  final double elevation;

  const _CardType1({
    required this.label,
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
            )
          ],
        ),
        ),
    );
  }
}






class _CardType2 extends StatelessWidget {
  
  final String label;
  final double elevation;

  const _CardType2({
    required this.label,
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10),
        side: BorderSide(
          color: Colors.grey,
        )
      ),
      elevation: elevation,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text("Label 2"),
            )
          ],
        ),
        ),
    );
  }
}