import 'package:flutter/material.dart';

//container adalah wadah untuk menampung widget lain
class BelajarContainer extends StatelessWidget {
  const BelajarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      // margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.pinkAccent, Colors.purpleAccent]),
        // borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.lightBlueAccent, Colors.pinkAccent]),
              borderRadius: BorderRadius.circular(10)),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.pink, Colors.purple]),
                borderRadius: BorderRadius.circular(10)),
            child: Container(
              width: 500,
              height: 500,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              foregroundDecoration: BoxDecoration(
                  image: DecorationImage(
                      image: 
                        NetworkImage("https://m.media-amazon.com/images/I/61oocbMpQML._AC_UF1000,1000_QL80_.jpg"),
                      fit: BoxFit.fill),
                  gradient:
                      LinearGradient(colors: [Colors.green, Colors.brown]),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ),
      ),
    );
  }
}
