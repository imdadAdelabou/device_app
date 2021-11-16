import "package:flutter/material.dart";

class CustomTextField extends StatelessWidget {
  final Function(String value) getValue;
  const CustomTextField({
    Key? key,
    required this.getValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 70,
      child: TextFormField(
        onChanged: getValue,
        decoration: const InputDecoration(
          filled: true,
          fillColor: Colors.grey,
          border: OutlineInputBorder(),
          hintText: "Entrez l'Id de la moto",
        ),
      ),
    );
  }
}
