import 'package:flutter/material.dart';

class Actionchopsuiu extends StatefulWidget {
  const Actionchopsuiu({super.key});

  @override
  State<Actionchopsuiu> createState() => _ActionchopsuiuState();
}

class _ActionchopsuiuState extends State<Actionchopsuiu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChoiceChip(
          label: Text("01",
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          selected: isSelected,
          showCheckmark: false,
          selectedColor: Colors.blueAccent,
          backgroundColor: Color.fromRGBO(20, 20, 20, 1),
          side: BorderSide(
              color: Color.fromRGBO(20, 20, 20, 1)),
          onSelected: (newstate) {
            setState(() {
              isSelected = newstate;
            });
          }),,
    );
  }
}
