import 'package:flutter/material.dart';

class PersonalDataSection extends StatelessWidget {
  const PersonalDataSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/15919897/pexels-photo-15919897/free-photo-of-mujer-sentado-chaqueta-tejanos.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                  radius: 60,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Wrap(
                    runSpacing: 10,
                    children: [
                      const Text("Nombre:"),
                      TextFormField(
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            filled: true),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Wrap(
                    runSpacing: 10,
                    children: [
                      const Text("Apellido Paterno:"),
                      TextFormField(
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            filled: true),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Wrap(
                    runSpacing: 10,
                    children: [
                      const Text("Apellido Materno:"),
                      TextFormField(
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            filled: true),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Wrap(
                    runSpacing: 10,
                    children: [
                      const Text("Fecha de nacimiento:"),
                      TextFormField(
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            filled: true),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Wrap(
                    runSpacing: 10,
                    children: [
                      const Text("Sexo:"),
                      TextFormField(
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            filled: true),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Wrap(
                    runSpacing: 10,
                    children: [
                      const Text("Peso:"),
                      TextFormField(
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            filled: true),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Wrap(
                    runSpacing: 10,
                    children: [
                      const Text("Talla:"),
                      TextFormField(
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            filled: true),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Wrap(
                    runSpacing: 10,
                    children: [
                      const Text("Enfermedad cronica:"),
                      TextFormField(
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            filled: true),
                      )
                    ],
                  ),
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Guardar"))
              ],
            ),
          ),
        ));
  }
}
