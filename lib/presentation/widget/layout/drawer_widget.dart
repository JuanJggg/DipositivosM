import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:syke/config/router/router.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:  Column(
        children: [
         ...routerConfig.where((e) => e.isVisible).map((e) => ListTile(
            leading: Icon(e.icon),
            title: Text(e.title),
            subtitle: Text(e.description),
            onTap: (){
              context.go(e.patch);
            },
          ))
        ]
      ),
    );
  }
}