import 'package:cicla/entities/user.dart';
import 'package:cicla/infrastructure/firebase_user_infra.dart';
import 'package:cicla/providers/valid_session.dart';
import 'package:cicla/screens/widgets/custom_general_button.dart';
import 'package:cicla/uses_cases/getall_user.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInState();
}

class _SignInState extends State<SignInScreen> {
  final TextEditingController _emailController =
      TextEditingController(text: "cicla@gmail.com");
  final TextEditingController _passwordController =
      TextEditingController(text: "cicla123");
  bool isloading = false;
  bool saveSesion = false;
  bool loadingValidSession = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            direction: Axis.vertical,
            runAlignment: WrapAlignment.center,
            spacing: 20,
            children: [
              const Image(height: 200, image: AssetImage("assets/logo.jpeg")),
              InpuEmail(size: size, emailController: _emailController),
              InputPassword(
                  size: size, passwordController: _passwordController),
              SizedBox(
                  width: size.width,
                  child: SwitchListTile(
                    value: saveSesion,
                    onChanged: (value) {
                      setState(() {
                        saveSesion = value;
                      });
                    },
                    title: const Text("Guardar sesión"),
                  )),
              CustomGeneralButton(
                  textOfButton: "Iniciar Sesión",
                  onPressed: () async {
                    setState(() {
                      isloading = true;
                    });
                    final isValidaUser =
                        await ExistUser(repository: FirebaseUserInfra()).exist(
                            User.fromJson({
                      "email": _emailController.text,
                      "password": _passwordController.text
                    }));
                    setState(() {
                      isloading = false;
                    });
                    if (saveSesion) {
                      ValidSession().switchInitialRoute("home");
                    }
                    goHome(isValidaUser);
                  },
                  isTransparent: false,
                  isLoading: isloading),
              const Text("¿Olvidaste tu contraseña??"),
              CustomGeneralButton(
                  textOfButton: "Crear Cuenta",
                  onPressed: () {
                    context.go("/sign_up");
                  },
                  isTransparent: true),
            ],
          ),
        ),
      ),
    );
  }

  void goHome(bool isValidaUser) {
    if (isValidaUser) {
      context.go("/home");
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Contraseña o Correo incorrecto")));
    }
  }
}

class InputPassword extends StatelessWidget {
  const InputPassword({
    super.key,
    required this.size,
    required TextEditingController passwordController,
  }) : _passwordController = passwordController;

  final Size size;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: size.width,
      child: TextFormField(
        controller: _passwordController,
        decoration: const InputDecoration(hintText: "Contraseña"),
      ),
    );
  }
}

class InpuEmail extends StatelessWidget {
  const InpuEmail({
    super.key,
    required this.size,
    required TextEditingController emailController,
  }) : _emailController = emailController;

  final Size size;
  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: size.width,
      child: TextFormField(
        controller: _emailController,
        decoration: const InputDecoration(hintText: "Correo del usuario"),
      ),
    );
  }
}
