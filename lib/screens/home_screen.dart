import 'package:cicla/entities/user.dart';
import 'package:cicla/infrastructure/firebase_user_infra.dart';
import 'package:cicla/screens/sections/add_bathroom.dart';
import 'package:cicla/screens/sections/appoinment_medical_section.dart';
import 'package:cicla/screens/sections/dashboard.dart';
import 'package:cicla/screens/sections/personal_data_section.dart';
import 'package:cicla/screens/sections/recomendations_section.dart';
import 'package:cicla/screens/sections/remember_water.dart';
import 'package:cicla/screens/sections/vacunas_section.dart';
import 'package:cicla/uses_cases/get_user.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> screens = [
    const DashBoard(),
    const PersonalDataSection(),
    const AddBathRoomSection(),
    const RememberWaterSection(),
    const AppoinmentMedicalSection(),
    const VacunasSection(),
    const RecommendSection(),
  ];

  int index = 0;
  final GlobalKey<ScaffoldState> _scaffolKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffolKey,
      appBar: AppBar(
        title: Text(
          "Cuenta conmigo",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary),
        ),
        actions: [
          IconButton.filledTonal(
              onPressed: () {
                _showMyDialog();
              },
              icon: const Icon(Icons.exit_to_app_outlined))
        ],
      ),
      body: screens[index],
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.play_arrow),
      // ),
      drawer: NavigationDrawer(
        selectedIndex: index,
        onDestinationSelected: (value) {
          setState(() {
            if (value == 0) {
              index = 0;
            }
            if (value == 1) {
              index = 1;
            }
            if (value == 2) {
              index = 2;
            }
            if (value == 3) {
              index = 3;
            }
            if (value == 4) {
              index = 4;
            }
            if (value == 5) {
              index = 5;
            }
          });
          _scaffolKey.currentState!.openEndDrawer();
        },
        children: [
          FutureBuilder(
            future: GetUser(repository: FirebaseUserInfra()).get(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 10,
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  NetworkImage(snapshot.data!.img!),
                              radius: 40,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snapshot.data!.name!,
                                  style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  snapshot.data!.date!,
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                )
                              ],
                            )
                          ],
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          snapshot.data!.sexo! == Sexo.masculino
                              ? "Masculino"
                              : "Femenino",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          snapshot.data!.tall!,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          snapshot.data!.weight!,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          snapshot.data!.enfermedad!,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
          const SizedBox(
            height: 15,
          ),
          const NavigationDrawerDestination(
              icon: Icon(Icons.home), label: Text("Home")),
          const NavigationDrawerDestination(
              icon: Icon(Icons.person), label: Text("Datos personales")),
          const NavigationDrawerDestination(
              icon: Icon(Icons.bathroom), label: Text("Registro Baño")),
          const NavigationDrawerDestination(
              icon: Icon(Icons.water), label: Text("Recordatorio Agua")),
          const NavigationDrawerDestination(
              icon: Icon(Icons.medication_outlined),
              label: Text("Citas Medicas")),
          const NavigationDrawerDestination(
              icon: Icon(Icons.medical_information_rounded),
              label: Text("Vacunas")),
          const NavigationDrawerDestination(
              icon: Icon(Icons.recommend), label: Text("Recomendaciones")),
        ],
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('¿Estas seguro de cerrar sessión?'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Esto eliminara el inicio de sessión que se guardo.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Si'),
              onPressed: () {
                deleteSession();
              },
            ),
            TextButton(
              child: const Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void deleteSession() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.remove("session");
      if (mounted) {
        context.go("/");
      }
    } catch (e) {
    }
  }
}
