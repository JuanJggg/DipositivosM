import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String id;
  const DetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Text("Esto es el detalle de $id")));
  }
}
