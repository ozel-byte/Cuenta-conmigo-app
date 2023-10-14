import 'package:flutter/material.dart';


class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Home"),
          FlutterLogo(size: 100,)
        ],
      ),
    );
  }
}