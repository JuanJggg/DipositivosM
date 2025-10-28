import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:syke/presentation/widget/layout/drawer_widget.dart';

class ProductoScreen extends StatelessWidget {
  static final String routeName = 'producto_screen';
  const ProductoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Producto Screen'),
      ),
      drawer: DrawerWidget(),
      body: FilledButton(onPressed: (){
        context.go('/');
      }, child: Text("To-home")),
    );
  }
}