import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
   SignUpScreen({super.key});

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _generoController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Crear cuenta de usuario"),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.vertical,
            runAlignment: WrapAlignment.center,
            spacing: 30,
            children: [
               CircleAvatar(
                radius: 80,
                child: IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt,size: 40,)),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: size.width,
                child: TextFormField(
                  controller: _nameController,
                  decoration:
                      const InputDecoration(labelText: "Nombre del usuario"),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: size.width,
                child: TextFormField(
                  controller: _generoController,
                  decoration: const InputDecoration(labelText: "Genero"),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: size.width,
                child: TextFormField(
                  controller: _emailController,
                  decoration:
                      const InputDecoration(labelText: "Correo eletrónico"),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: size.width,
                child: TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(labelText: "Contraseña"),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: size.width,
                child: TextFormField(
                  controller: _confirmPasswordController,
                  decoration:
                      const InputDecoration(labelText: "Confirmar Contraseña"),
                ),
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: size.width,
                  child: FilledButton.tonal(
                      onPressed: () {}, child: const Text("Crear Cuenta")))
            ],
          ),
        ),
      ),
    );
  }
}
