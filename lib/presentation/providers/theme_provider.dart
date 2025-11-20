 
 import 'package:riverpod/legacy.dart';
import 'package:riverpod/riverpod.dart';
import 'package:widgets_app/theme/app_theme.dart';

 //esto es un estado para manejar buleanos

final isDarkmodeProvider = StateProvider((ref)=> false);

final colorListProvider = Provider((Ref)=> colorList);