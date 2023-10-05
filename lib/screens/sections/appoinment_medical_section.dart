import 'package:flutter/material.dart';

class AppoinmentMedicalSection extends StatelessWidget {
  const AppoinmentMedicalSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ver calendario",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  const Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      child: ListTile(
                        title: Text("Cardiologo"),
                        subtitle: Text("Viernes 8 octubre"),
                        trailing: Icon(Icons.account_circle_rounded),
                      ),
                    ),
                  ),
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      child: ListTile(
                        title: Text("Cardiologo"),
                        subtitle: Text("Viernes 8 octubre"),
                        trailing: Icon(Icons.account_circle_rounded),
                      ),
                    ),
                  ),
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      child: ListTile(
                        title: Text("Cardiologo"),
                        subtitle: Text("Viernes 8 octubre"),
                        trailing: Icon(Icons.account_circle_rounded),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
