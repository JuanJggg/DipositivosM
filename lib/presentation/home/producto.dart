import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductoScreen extends StatelessWidget {
  const ProductoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Producto Screen'),
      ),
      body: FilledButton(onPressed: (){
        context.go('/');
      }, child: Text("To-home")),
    );
  }
}