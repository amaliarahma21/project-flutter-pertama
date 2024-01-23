import 'package:flutter/material.dart';

class BelajarRowColumn extends StatelessWidget {
  const BelajarRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("Ini isi Row 1"),
        Text("Ini isi Row 2"),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Ini isi Column 1"),
            Text("Ini isi Column 2"),
            Text("Ini isi Column 3")
          ],
        )
      ],
    );
  }
}