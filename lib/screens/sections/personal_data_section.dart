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
              runSpacing: 20,
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
                      Text(
                        "Nombre:",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Ingrese su nombre",
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary)),
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
                      Text("Apellido Paterno:",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold)),
                      TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary)),
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
                      Text("Apellido Materno:",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold)),
                      TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary)),
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
                      Text("Fecha de nacimiento:",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold)),
                      TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary)),
                            filled: true),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                   
                    Container(
                      width: (size.width / 2) - 10,
                      height: 20,
                      color: Colors.green,
                    ),
                     Container(
                     width: (size.width / 2) - 10,
                      height: 20,
                      color: Colors.yellow,
                    )
                  ],
                ),
               
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Wrap(
                    runSpacing: 10,
                    children: [
                      Text("Talla:",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold)),
                      TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary)),
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
                      Text("Enfermedad cronica:",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold)),
                      TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary)),
                            filled: true),
                      )
                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  child: FilledButton.tonal(
                      onPressed: () {}, child: const Text("Actualizar")),
                )
              ],
            ),
          ),
        ));
  }
}
