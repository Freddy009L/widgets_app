import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';


class CounterScreen extends ConsumerWidget {
  static var name = 'counter_screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef widgetRef) {

    final clickConter = widgetRef.watch(counterProvider);
    final bool isDarkmode = widgetRef.watch(isDarkmodeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
        actions: [
          IconButton(
           //icon: Icon( Icons.light_mode_outlined),
           icon: Icon( isDarkmode? Icons.dark_mode_outlined : Icons.light_mode_outlined),
           onPressed: (){
            widgetRef.read( isDarkmodeProvider.notifier).update((isDarkmode)=> !isDarkmode);
           },
           ),
        ],
      ),
      body: Center(
         child: Text('Valor: $clickConter', style: Theme.of(context).textTheme.titleLarge),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_outlined),
        onPressed: () {
          widgetRef.read(counterProvider.notifier).state++;
        },
      ),  
    );
  }
}
