import 'package:cicla/entities/user.dart';
import 'package:cicla/infrastructure/firebase_user_infra.dart';
import 'package:cicla/uses_cases/getall_user.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            direction: Axis.vertical,
            runAlignment: WrapAlignment.center,
            spacing: 20,
            children: [
              const Image(height: 200, image: AssetImage("assets/logo.jpeg")),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: size.width,
                child: TextFormField(
                  controller: _emailController,
                  decoration:
                      const InputDecoration(hintText: "Correo del usuario"),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: size.width,
                child: TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(hintText: "Contraseña"),
                ),
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: size.width,
                  child: FilledButton.tonal(
                      onPressed: () async {
                        setState(() {
                          loading = true;
                        });
                        final isValidaUser =
                            await ExistUser(repository: FirebaseUserInfra())
                                .exist(User.fromJson({
                          "email": _emailController.text,
                          "password": _passwordController.text
                        }));
                        setState(() {
                          loading = false;
                        });
                        if (mounted && !isValidaUser) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content:
                                      Text("Contraseña o correo incorrecto")));
                          return;
                        }
                        if (mounted) {
                          Navigator.popAndPushNamed(context, "home");
                        }
                      },
                      child: loading
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                              ))
                          : const Text("Iniciar sesión"))),
              const Text("¿Olvidaste tu contraseña?"),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: size.width,
                  child: OutlinedButton(
                      onPressed: () {}, child: const Text("Registrarse"))),
            ],
          ),
        ),
      ),
    );
  }
}
