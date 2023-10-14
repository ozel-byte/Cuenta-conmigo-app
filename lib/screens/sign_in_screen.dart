import 'package:flutter/material.dart';



class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const FlutterLogo(
            size: 100,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Nombre de usuario"
            ),
          ),
           TextFormField(
            decoration: const InputDecoration(
              hintText: "Contraseña"
            ),
          ),
          const Text("¿Olvidaste tu contraseña?"),
        ],
      ),
    );
  }
}