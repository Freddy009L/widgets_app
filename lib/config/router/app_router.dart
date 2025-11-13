import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/sccrens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => HomeScreen(),
      ),
        GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => ButtonsScreen(),
      ),
        GoRoute(
      path: '/card',
      name: CardsScreen.name,
      builder: (context, state) => CardsScreen(),
      ),
        GoRoute(
      path: '/porgrees',
      name: ProgreesSreens.name,
      builder: (context, state) => ProgreesSreens(),
      ),
         GoRoute(
      path: '/snackbars',
      name: SnackbarScreens.name,
      builder: (context, state) => SnackbarScreens(),
      ),
  ],
);