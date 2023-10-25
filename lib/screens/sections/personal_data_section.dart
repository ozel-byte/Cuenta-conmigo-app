import 'package:cicla/entities/user.dart';
import 'package:cicla/infrastructure/firebase_user_infra.dart';
import 'package:cicla/uses_cases/get_user.dart';
import 'package:cicla/uses_cases/update_user.dart';
import 'package:flutter/material.dart';

class PersonalDataSection extends StatefulWidget {
  const PersonalDataSection({super.key});

  @override
  State<PersonalDataSection> createState() => _PersonalDataSectionState();
}

class _PersonalDataSectionState extends State<PersonalDataSection> {
  Sexo? sexo = Sexo.masculino;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerDate = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerEnfermedad = TextEditingController();
  final TextEditingController _controllerLastName = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerWeight = TextEditingController();
  final TextEditingController _controllerTall = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
            child: FutureBuilder(
          future: GetUser(repository: FirebaseUserInfra()).get(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              initControllers(snapshot.data!);
              sexo = snapshot.data!.sexo! == Sexo.masculino
                  ? Sexo.masculino
                  : Sexo.femenino;
              return Form(
                key: _formKey,
                child: Wrap(
                  runSpacing: 20,
                  alignment: WrapAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      width: size.width,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        NetworkImage(snapshot.data!.img!),
                                    radius: 60,
                                  ),
                                  const SizedBox(height: 10,),
                                  const Text("Cambiar Foto",style: TextStyle(fontSize: 20),),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ExpansionTile(
                                backgroundColor:
                                    Theme.of(context).colorScheme.background,
                                collapsedBackgroundColor:
                                    Theme.of(context).colorScheme.background,
                                shape: InputBorder.none,
                                title: const Text("Nombre"),
                                subtitle: Text(snapshot.data!.name!),
                                childrenPadding:
                                    const EdgeInsets.only(bottom: 10),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: TextFormField(
                                      controller: _controllerName,
                                      decoration: const InputDecoration(
                                          labelText: "Ingrese un nuevo nombre"),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ExpansionTile(
                                backgroundColor:
                                    Theme.of(context).colorScheme.background,
                                collapsedBackgroundColor:
                                    Theme.of(context).colorScheme.background,
                                shape: InputBorder.none,
                                title: const Text("Apellidos"),
                                subtitle: Text(snapshot.data!.lastName!),
                                childrenPadding:
                                    const EdgeInsets.only(bottom: 10),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: TextFormField(
                                      controller: _controllerLastName,
                                      decoration: const InputDecoration(
                                          labelText: "Ingrese sus Apellidos"),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ExpansionTile(
                                backgroundColor:
                                    Theme.of(context).colorScheme.background,
                                collapsedBackgroundColor:
                                    Theme.of(context).colorScheme.background,
                                shape: InputBorder.none,
                                title: const Text("Fecha Nacimiento"),
                                subtitle: Text(snapshot.data!.date!),
                                childrenPadding:
                                    const EdgeInsets.only(bottom: 10),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: TextFormField(
                                      controller: _controllerDate,
                                      decoration: const InputDecoration(
                                          labelText:
                                              "Ingrese su fecha de nacimiento"),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      width: size.width,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Wrap(
                            runSpacing: 20,
                            children: [
                              const Text(
                                "Selecione su sexo",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w400),
                              ),
                              RadioListTile<Sexo>(
                                  value: Sexo.masculino,
                                  groupValue: sexo,
                                  onChanged: (Sexo? value) {
                                    setState(() {
                                      sexo = value;
                                    });
                                  },
                                  title: const Text("Masculino")),
                              RadioListTile<Sexo>(
                                  value: Sexo.femenino,
                                  groupValue: sexo,
                                  onChanged: (Sexo? value) {
                                    setState(() {
                                      sexo = value;
                                    });
                                  },
                                  title: const Text("Femenino")),
                              ExpansionTile(
                                backgroundColor:
                                    Theme.of(context).colorScheme.background,
                                collapsedBackgroundColor:
                                    Theme.of(context).colorScheme.background,
                                shape: InputBorder.none,
                                title: const Text("Peso"),
                                subtitle: Text(snapshot.data!.weight!),
                                childrenPadding:
                                    const EdgeInsets.only(bottom: 10),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: TextFormField(
                                      controller: _controllerWeight,
                                      decoration: const InputDecoration(
                                          labelText: "Ingrese su peso"),
                                    ),
                                  ),
                                ],
                              ),
                              ExpansionTile(
                                backgroundColor:
                                    Theme.of(context).colorScheme.background,
                                collapsedBackgroundColor:
                                    Theme.of(context).colorScheme.background,
                                shape: InputBorder.none,
                                title: const Text("Talla"),
                                subtitle: Text(snapshot.data!.tall!),
                                childrenPadding:
                                    const EdgeInsets.only(bottom: 10),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: TextFormField(
                                      controller: _controllerTall,
                                      decoration: const InputDecoration(
                                          labelText: "Ingrese su talla"),
                                    ),
                                  ),
                                ],
                              ),
                              ExpansionTile(
                                backgroundColor:
                                    Theme.of(context).colorScheme.background,
                                collapsedBackgroundColor:
                                    Theme.of(context).colorScheme.background,
                                shape: InputBorder.none,
                                title: const Text("Enfermedad Cronica"),
                                subtitle: Text(snapshot.data!.enfermedad!),
                                childrenPadding:
                                    const EdgeInsets.only(bottom: 10),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: TextFormField(
                                      controller: _controllerEnfermedad,
                                      decoration: const InputDecoration(
                                          labelText:
                                              "Ingrese su enfermedad cronica"),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    FilledButton.tonal(
                        style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll(
                                Size.fromWidth(size.width - 40))),
                        onPressed: () async {
                          final response =
                              await UpdateUser(repository: FirebaseUserInfra())
                                  .update(User.fromJsonAll({
                            "Date": _controllerDate.text,
                            "email": _controllerEmail.text,
                            "enfermedad": _controllerEnfermedad.text,
                            "img": snapshot.data!.img!,
                            "last-name": _controllerLastName.text,
                            "name": _controllerName.text,
                            "password": _controllerPassword.text,
                            "sexo": sexo == Sexo.masculino
                                ? "masculino"
                                : "femenino",
                            "tall": _controllerTall.text,
                            "weight": _controllerWeight.text
                          }));
                          if (response) {
                            setState(() {});
                            showSnackBarMessage("Usuario actualizado");
                          } else {
                            showSnackBarMessage("No se pudo actualizar");
                          }
                        },
                        child: const Text("Actualizar"))
                  ],
                ),
              );
            } else {
              return const Center(child: LinearProgressIndicator());
            }
          },
        )));
  }

  void initControllers(User user) {
    _controllerName.text = user.name!;
    _controllerDate.text = user.date!;
    _controllerEmail.text = user.email!;
    _controllerEnfermedad.text = user.enfermedad!;
    _controllerLastName.text = user.lastName!;
    _controllerPassword.text = user.password!;
    _controllerTall.text = user.tall!;
    _controllerWeight.text = user.weight!;
  }

  void showSnackBarMessage(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
}
