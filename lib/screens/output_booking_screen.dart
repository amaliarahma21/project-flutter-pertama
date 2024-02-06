import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';

class OutputBookingScreen extends StatelessWidget {
  final String nama, jumlah, tglPergi, tujuan, harga, totalHarga, img;
  OutputBookingScreen({
    Key? key,
    required this.nama,
    required this.jumlah,
    required this.tglPergi,
    required this.tujuan,
    required this.harga,
    required this.totalHarga,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // backgroundColor: Colors.blueAccent,
        title: Text("Invoice Ticket"),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bg.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 4.0,
                color: Colors.white,
                margin: EdgeInsets.only(top: 24, right: 24, left: 24),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "${img}",
                          fit: BoxFit.cover,
                          height: displayHeight(context) * 0.25,
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Nama Lengkap : " + nama,
                            style: TextStyle(),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Tempat Tujuan : " + tujuan),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Tanggal : " + tglPergi),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Harga : Rp." + harga),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Jumlah : " + jumlah),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Total : Rp." + totalHarga),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
