import 'package:flutter/material.dart';


class RecommendSection extends StatelessWidget {
  const RecommendSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: const Center(
        child: Text("Recomendaciones"),
      ),
    );
  }
}