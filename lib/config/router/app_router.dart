import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/home/home_screen.dart';
import 'package:widgets_app/presentation/screens/sccrens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
      ),
        GoRoute(
      path: '/buttons',
      builder: (context, state) => ButtonsScreen(),
      ),
        GoRoute(
      path: '/card',
      builder: (context, state) => CardsScreen(),
      ),
  ],
);