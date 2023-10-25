import 'package:cicla/screens/widgets/custom_appbar.dart';
import 'package:cicla/screens/widgets/custom_container.dart';
import 'package:cicla/screens/widgets/custom_general_button.dart';
import 'package:cicla/screens/widgets/custom_textfield_password.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirmPasswordController = TextEditingController();
  bool _isMale = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Crear Cuenta", route: "/"),
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                direction: Axis.vertical,
                runAlignment: WrapAlignment.center,
                spacing: 30,
                children: [
                   CircleAvatar(
                    radius: 80,
                    child: IconButton(onPressed: (){}, icon: const Icon(Icons.add_a_photo_outlined,size: 40,)),
                  ),
                  CustomContainer(
                    child: TextFormField(
                        controller: _nameController,
                        decoration:
                            const InputDecoration(labelText: "Nombre de usuario"),
                      ),
                  ),  
                  CustomContainer(
                    child: TextFormField(
                        controller: _emailController,
                        decoration:
                            const InputDecoration(labelText: "Correo"),
                      ),
                  ),
                  CustomContainer(
                    child: CustomTextFieldPassword(
                      controller: _passwordController,
                      hintText: "Contraseña",
                    )
                  ),
                  CustomContainer(
                    child: CustomTextFieldPassword(
                      controller: _confirmPasswordController,
                      hintText: "Confirmar contraseña",
                    ) ),
                ],
              ),
              Column(
                children: [
                  const Text("Género"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio(
                        value: true,
                        groupValue: _isMale,
                        onChanged: (value) => setState(() => _isMale = !_isMale),
                      ),
                      const Text("Masculino"),
                      Radio(
                        value: false,
                        groupValue: _isMale,
                        onChanged: (value) => setState(() => _isMale = !_isMale),
                      ),
                      const Text("Femenino"),
                    ],
                  ),
                ],
              ),  
                CustomGeneralButton(textOfButton: "Crear cuenta", onPressed: (){}, isTransparent: false)
            ],
          ),
        ),
      ),
    );
  }
}
