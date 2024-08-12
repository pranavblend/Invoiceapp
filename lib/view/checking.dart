import 'package:flutter/material.dart';

class Checking extends StatefulWidget {
  const Checking({super.key});

  @override
  State<Checking> createState() => _CheckingState();
}

class _CheckingState extends State<Checking> {


  final List<String> _brands = ["Nike", "Puma", "Under Armour", "Adidas", "Converse"];
  final Map<String, bool> _selectedBrands = {
    "Nike": true,
    "Puma": false,
    "Under Armour": false,
    "Adidas": false,
    "Converse": false,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          spacing: 8.0,
          children: _brands.map((brand) {
            return FilterChip(selectedColor: Colors.blueAccent,
              avatar: CircleAvatar(
                backgroundImage: AssetImage('assets/$brand.png'),
              ),
              label: Text(brand),
              selected: _selectedBrands[brand]!,
              onSelected: (bool selected) {
                setState(() {
                  _selectedBrands[brand] = selected;
                });
              },
            );
          }).toList(),
        ),
      ),

    );
  }
}
