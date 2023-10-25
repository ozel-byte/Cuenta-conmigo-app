import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? route;
  const CustomAppBar({
    Key? key,
    required this.title,
    this.route,
    }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(title),
      leading: IconButton(
        onPressed: () {
          if (route != null) {
            context.go(route!);
          } else {
            context.pop();
          }
        },
        icon: Icon(Icons.arrow_back,
          color: Theme.of(context).primaryColor
        ),
      )
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(50);
}