import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:syke/presentation/widget/layout/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hola Home'),
      ),
      drawer: DrawerWidget(),
      body: SafeArea(
        child: FilledButton(onPressed: (){
          context.go('/producto');
        }, child: Text("To-product")),
      )
    );
  }
}