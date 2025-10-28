import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class RouterModel {
  String name;
  GoRouterWidgetBuilder screen;
  String title;
  String patch;
  IconData icon;
  String description;
  bool isVisible = true;
  
  RouterModel({
    required this.name,
    required this.screen,
    required this.title,
    required this.patch,
    required this.icon,
    required this.description,
    required this.isVisible,
  });
}