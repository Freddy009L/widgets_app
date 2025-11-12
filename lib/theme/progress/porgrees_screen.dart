import 'package:flutter/material.dart';


class  ProgreesSreens extends StatelessWidget {

   static const name = 'progrees_Screens';
  const ProgreesSreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('Progress Indicators'),
      ),
     body: _ProgressView(),
     );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Text('Circular progress indicator'),
          SizedBox(height: 10),
          CircularProgressIndicator(strokeWidth: 2, backgroundColor: Colors.black45),

          SizedBox(height: 20),
          Text('Circular y Linear controlado'),
          SizedBox(height: 10),
          _ControllerdProgresIndicator(),
        ],
      ),
    );
  }
}

class _ControllerdProgresIndicator extends StatelessWidget {
  const _ControllerdProgresIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
        return (value * 2) / 100; //0.0, 1.0
      }).takeWhile((value) => value < 100 ),
      builder: (context, asyncSnapshot) {

        final porgreesValue = (asyncSnapshot.data ?? 0.0) as double;
        
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator( value: porgreesValue, strokeWidth: 2, backgroundColor: Colors.black12),
              SizedBox(width: 20),
              Expanded(
                child: LinearProgressIndicator( value: porgreesValue),
                ),
            ],
          ),
        );
      }
    );
  }
}