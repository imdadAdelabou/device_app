import "package:flutter/material.dart";
import 'package:secu_moto/form.dart';
import 'package:secu_moto/models/users.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String id = "";
  Users? newUsers = Users();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 70.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomTextField(
              getValue: (String value) {
                setState(() {
                  id = value;
                });
              },
            ),
          ),
          const SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {
              print("id: $id");
              for (int i = 0; i < listsUsers.length; i++) {
                print(listsUsers[i].name);
                if (listsUsers[i].id == id) {
                  newUsers!.id = listsUsers[i].id;
                  newUsers!.isVole = listsUsers[i].isVole;
                  newUsers!.name = listsUsers[i].name;
                  newUsers!.surname = listsUsers[i].surname;
                  newUsers!.numChassi = listsUsers[i].numChassi;
                  newUsers!.phoneNumber = listsUsers[i].phoneNumber;
                  break;
                }
              }
              setState(() {});
            },
            child: const Text("Rechercher"),
          ),
          const SizedBox(height: 70.0),
          const Text(
            "Résultats:",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          newUsers!.id != null
              ? PrintUsers(
                  user: newUsers,
                )
              : const Text("Aucun resultat pour le moment")
        ],
      ),
    );
  }
}

class PrintUsers extends StatelessWidget {
  final Users? user;
  const PrintUsers({
    Key? key,
    this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50.0),
        Text("Identification: ${user!.id}"),
        const SizedBox(height: 8.0),
        Text("Nom: ${user!.name}"),
        const SizedBox(height: 8.0),
        Text("Prenoms: ${user!.surname}"),
        const SizedBox(height: 8.0),
        Text("Numeros de Chassi: ${user!.numChassi}"),
        const SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Status: "),
            const SizedBox(width: 20.0),
            user!.isVole == true
                ? const CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.red,
                  )
                : const CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.green,
                  ),
          ],
        ),
      ],
    );
  }
}
