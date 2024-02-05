import 'package:belajar/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';

class ListGalaxyScreen extends StatelessWidget {
  final List<Map<String, dynamic>> galaxyData = [
    {
      "nama": "Galaxy Bima Sakti",
      "image": "images/bimasakti.jpg",
      "desc":
          "Galaksi Bima Sakti adalah tempat kita hidup bersama manusia lain di planet bumi. "
    },
    {
      "nama": "Galaxy Andromeda",
      "image": "images/andromeda.jpg",
      "desc":
          "Nama lain dari Galaksi Andromeda adalah Messier 31 (M.31). Messier adalah nama seorang astronom asal Perancis yang pertama kalinya mencatat galaksi ini ketika tengah menyelidiki keberadaan galaksi yang ada di alam semesta."
    },
    {
      "nama": "Galaxy Magellan Besar",
      "image": "images/big-magellan.jpg",
      "desc":
          "Nama keduanya yakni Magellan diambil dari penemunya, yakni Ferdinand Magellan, selaku astronom berasal dari Portugal. "
    },
    {
      "nama": "Galaxy Magellan Kecil",
      "image": "images/small-magellan.jpg",
      "desc":
          "Nama keduanya yakni Magellan diambil dari penemunya, yakni Ferdinand Magellan, selaku astronom berasal dari Portugal."
    },
    {
      "nama": "Galaxy Sombrero",
      "image": "images/sombrero.jpg",
      "desc":
          "Nama lain dari Galaksi Sombrero ini adalah Messier 104 (M104), yang terletak di sekitar 28 juta tahun cahaya dari galaksi kita. Inti pada galaksi ini sangat cerah, yakni pada pusat tonjolannya yang besar dan di bagian tengah dikelilingi debut."
    },
    {
      "nama": "Galaxy The Rose (Arp 273)",
      "image": "images/the-rose.jpg",
      "desc":
          "Galaksi The Rose ini terdiri dari 2 galaksi yakni UGC 1810 dan UGC 1813. "
    },
    {
      "nama": "Galaxy Sculptor (NGC 253)",
      "image": "images/sculptor.jpg",
      "desc":
          "Galaksi NGC 253 ini berbentuk spiral dan disebut sebagai galaksi paling terang sekaligus yang paling redup. "
    },
    {
      "nama": "Galaxy Black Eye (M64)",
      "image": "images/black-eye.jpg",
      "desc":
          "Galaksi ini memiliki pita gelap yang spektakuler dalam menyerap debu yang ada di depan inti terang galaksi. "
    },
    {
      "nama": "Galaxy Blue Pinwheel",
      "image": "images/blue-pinwheel.jpg",
      "desc":
          "Galaksi ini memiliki bentuk bundar layaknya roda dengan warna biru."
    },
    {
      "nama": "Galaxy Cartwheel",
      "image": "images/cartwheel.jpg",
      "desc":
          "Galaxsy ini bentuknya sangat unik, mirip dengan roda pada gerobak yang berjejer, dan memiliki ukuran jarak sekitar 150.000 tahun cahaya."
    },
    {
      "nama": "Galaxy Sunflower",
      "image": "images/sunflower.jpg",
      "desc":
          "Galaxy ini bentuk tampilannya hampir menyerupai bunga matahari dan mempunyai nama lain Messier 63 (M63). "
    },
    {
      "nama": "Galaxy Ursa Mayor",
      "image": "images/ursa-mayor.jpg",
      "desc":
          "Nama lain dari galaksi ini adalah Galaksi Bintang Biduk. Keberadaan dari galaksi ini ternyata sangat bermanfaat bagi para manusia di bumi, terutama para pelayar yang menjadikannya sebagai patokan ketika tengah berlayar pada malam ini. "
    },
    {
      "nama": "Galaxy Pusaran Air (M51)",
      "image": "images/pusaran-air.jpg",
      "desc":
          "Bentuk tampilannya seolah menyerupai pusaran air, yang mana terjadi akibat gangguan gravitasi di alam semesta. Galaksi Pusaran Air alias M51 ini kerap dijadikan sasaran empuk bagi para astronom dalam upayanya mempelajari struktur dan lengan spiral galaksi. "
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/bg.jpg"),
              fit: BoxFit.cover),
        ),
        child: ListView.builder(
          itemCount: galaxyData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailGalaxyScreen(
                        nama: galaxyData[index]["nama"],
                        image: galaxyData[index]["image"],
                        desc: galaxyData[index]["desc"]),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: displayHeight(context) * 0.25,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("${galaxyData[index]["image"]}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  child: Text(
                    "${galaxyData[index]["nama"]}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
