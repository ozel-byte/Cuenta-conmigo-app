import 'package:flutter/material.dart';


class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            height: 200,
            image: AssetImage("assets/logo.jpeg"))
        ],
      ),
    );
  }
}