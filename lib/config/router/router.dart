import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:syke/config/router/router_model.dart';
import 'package:syke/presentation/admin/layout.dart';
import 'package:syke/presentation/admin/register/register_screen.dart';
import 'package:syke/presentation/admin/user/user_screen.dart';
import 'package:syke/presentation/home/detail_screen.dart';
import 'package:syke/presentation/home/home_screen.dart';
import 'package:syke/presentation/home/producto.dart';

final routerConfig = <RouterModel>[
  RouterModel(
    name: HomeScreen.routeName,
    screen: (context, state) => const HomeScreen(),
    title: 'Home Screen',
    patch: '/',
    icon: Icons.home,
    description: 'Esto es el home Screen',
    isVisible: true,
  ),
  RouterModel(
    name: ProductoScreen.routeName,
    screen: (context, state) => const ProductoScreen(),
    title: 'Producto Screen',
    patch: '/producto',
    icon: Icons.shopping_cart,
    description: 'Esto es el apartado de productos',
    isVisible: true,
  ),
  RouterModel(
    name: "Description",
    screen: (context, state) {
      final id = state.pathParameters['id'] ?? '';
      return DetailScreen(id: id);
    },
    title: 'Register Screen',
    patch: '/producto/:id',
    icon: Icons.details,
    description: 'Esto es el apartado de registro',
    isVisible: false,
  ),
];

final router = GoRouter(
  initialLocation: '/',

  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return Layout(child: child);
      },
      routes: <GoRoute>[
        GoRoute(
          path: '/admin/user',
          name: 'adminUser',
          builder: (context, state) {
            return UserScreen();
          },
        ),
        GoRoute(
          path: '/admin/register',
          name: 'adminRegister',
          builder: (context, state) {
            return RegisterScreen();
          },
        ),
      ],
    ),
    ...routerConfig.map(
      (e) => GoRoute(path: e.patch, name: e.name, builder: e.screen),
    ),
  ],
);