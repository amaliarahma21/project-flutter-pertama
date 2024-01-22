import 'package:flutter/material.dart';

//container adalah wadah untuk menampung widget lain
class BelajarContainer extends StatelessWidget {
  const BelajarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: EdgeInsets.all(10),
      color: Colors.grey,
      child: Text("ini adalah container"),
    );
  }
}