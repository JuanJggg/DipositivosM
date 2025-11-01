import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final Widget child;
  const Layout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Administrador'),
      ),
      body: SafeArea(child: Column(
        children: [
          Text("Esto es una maqueta de layout"),
          child,
          Text("Final content"),
        ],
      ))
    );
  }
}