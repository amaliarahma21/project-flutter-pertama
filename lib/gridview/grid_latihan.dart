import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GridLatihan extends StatelessWidget {
  GridLatihan({super.key});

  @override
  var data = 1;
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 500,
            child: GridView.count(
              scrollDirection: Axis.horizontal,
              crossAxisCount: 3,
              children: List.generate(
                  26,
                  (index) => Container(
                        child: Card(
                          color: Colors.amber,
                          child: Center(
                            child: Text("${String.fromCharCode(64 + data++)}"),
                          ),
                        ),
                      )),
            ),
          ),
          Container(
            child: Column(
              children: List.generate(
                  3,
                  (index) => Container(
                        child: Card(
                          color: Colors.green,
                          margin: EdgeInsets.all(10),
                          child: Center(
                            child: FlutterLogo(size: 200),
                          ),
                        ),
                      )),
            ),
          ),
        ],
      ),
    );
  }
}
