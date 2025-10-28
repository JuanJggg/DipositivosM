import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:syke/config/router/router_model.dart';
import 'package:syke/presentation/home/home_screen.dart';
import 'package:syke/presentation/home/producto.dart';

final routerConfig = <RouterModel>[
  RouterModel(
    name: HomeScreen.routeName,
    screen: (context, state) => const HomeScreen(),
    title: 'Home Screen',
    patch: '/',
    icon:  Icons.home,
    description: 'Esto es el home Screen',
    isVisible: true,
  ),
  RouterModel(
    name: ProductoScreen.routeName,
    screen: (context, state) => const ProductoScreen(),
    title: 'Producto Screen',
    patch: '/producto',
    icon:  Icons.shopping_cart,
    description: 'Esto es el apartado de productos',
    isVisible: true,
  ),
];

final router = GoRouter(
  initialLocation: '/',
  routes: <GoRoute> [
    ...routerConfig.map((e) => GoRoute(
      path: e.patch,
      name: e.name,
      builder: e.screen,
    ))
  ]
);