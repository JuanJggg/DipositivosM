import 'package:go_router/go_router.dart';
import 'package:syke/presentation/home/home_screen.dart';
import 'package:syke/presentation/home/producto.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: <GoRoute> [
    GoRoute(path: '/', name: 'home', builder: (context, state) {
      return const HomeScreen();
    },),
    GoRoute(path: '/producto', name: 'producto', builder: (context, state) {
      return const ProductoScreen();
    },)
  ]
);