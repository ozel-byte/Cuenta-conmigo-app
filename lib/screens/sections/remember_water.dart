import 'package:flutter/material.dart';

class RememberWaterSection extends StatelessWidget {
  const RememberWaterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: const Center(
        child: Text("Recordatorio agua"),
      ),
    );
  }
}
