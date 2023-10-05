import 'package:flutter/material.dart';

class AddBathRoomSection extends StatelessWidget {
  const AddBathRoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
              padding: const EdgeInsets.only(top: 5, left: 15),
              child: Text("Fechas y Horas",style: TextStyle(color: Theme.of(context).colorScheme.primary,fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            Expanded(
              child: ListView(
                children:  [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      child: ListTile(
                        title: Text("01/sep/2023",style: TextStyle(color: Theme.of(context).colorScheme.primary,fontWeight: FontWeight.bold),),
                        subtitle: Text("8:00 am",style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
                        trailing: Icon(Icons.date_range_outlined,color: Theme.of(context).colorScheme.primary,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      child: ListTile(
                        title: Text("11/sep/2023",style: TextStyle(color: Theme.of(context).colorScheme.primary,fontWeight: FontWeight.bold),),
                        subtitle: Text("18:00 pm",style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
                        trailing: Icon(Icons.date_range_outlined,color: Theme.of(context).colorScheme.primary,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
