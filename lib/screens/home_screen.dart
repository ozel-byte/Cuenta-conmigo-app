import 'package:cicla/screens/sections/add_bathroom.dart';
import 'package:cicla/screens/sections/appoinment_medical_section.dart';
import 'package:cicla/screens/sections/personal_data_section.dart';
import 'package:cicla/screens/sections/recomendations_section.dart';
import 'package:cicla/screens/sections/remember_water.dart';
import 'package:cicla/screens/sections/vacunas_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> screens = [
    const PersonalDataSection(),
    const AddBathRoomSection(),
    const RememberWaterSection(),
    const AppoinmentMedicalSection(),
    const VacunasSection(),
    const RecommendSection()
  ];

  int index = 0;
  final GlobalKey<ScaffoldState> _scaffolKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffolKey,
      appBar: AppBar(
        title: Text(
          index == 0
              ? 'Datos personales'
              : index == 1
                  ? 'Registro Baño'
                  : index == 2
                      ? 'Recordatorio Agua'
                      : index == 3
                          ? 'Citas Medicas'
                          : index == 4
                              ? 'Vacunas'
                              : index == 5
                                  ? 'Recomendaciones'
                                  : '',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary),
        ),
        actions: const [
          Text("1:55"),
          SizedBox(width: 20,)
        ],
      ),
      body: screens[index],

      floatingActionButton: FloatingActionButton(onPressed: (){},child: const Icon(Icons.play_arrow),),
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
          Padding(
              padding: const EdgeInsets.all(10),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 10,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/15919897/pexels-photo-15919897/free-photo-of-mujer-sentado-chaqueta-tejanos.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                    radius: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Martha",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        "23/12/2021",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary),
                      )
                    ],
                  )
                ],
              )),
          Wrap(
            alignment: WrapAlignment.spaceAround,
            children: [
              Text(
                "Femenino",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "2 años",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "86 cm",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "12.5 kg",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
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
}
