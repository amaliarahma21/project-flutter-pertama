import 'package:flutter/material.dart';

class GaleriPersib extends StatelessWidget {
  const GaleriPersib({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 125,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://assets.skor.id/crop/0x129:1278x847/x/photo/2020/08/03/1247822033.jpeg"),
                  fit: BoxFit.fitWidth),
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10)),
        ),
        Container(
            width: double.infinity,
            height: 125,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Container(
                  width: 120,
                  height: 200,
                  margin: EdgeInsets.only(right: 20),
                  // padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://static.promediateknologi.id/crop/0x0:0x0/640x384/webp/photo/2022/08/24/2711843730.jpeg"),
                          fit: BoxFit.fill),
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  width: 340,
                  height: 200,
                  child: 
                    Text(
                        "PERSIB berasal dari nama Persatuan Sepak Bola Indonesia Bandung, Persib didirikan pada 5 Januai 1919. Dijuluki dengan nama Maung Bandung dan Pangeran Biru. Pemilik nya adalah PT. Persib Bandung Bermartabat.", textAlign: TextAlign.justify,),
                )
              ],
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "GALLERY",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 125,
              height: 125,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDPOl5xCE8h8D1FQGZYWx6CzYc-KcRpT5awNOxa26LV4Uv-iOiJp_SlR3F0bFdCT4hsUs&usqp=CAU"),
                      fit: BoxFit.cover),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10)),
            ),
            Container(
              width: 125,
              height: 125,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.antaranews.com/cache/1200x800/2020/03/15/antarafoto-persib-bandung-menang-150320-agr-9.jpg"),
                      fit: BoxFit.cover),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10)),
            ),
            Container(
              width: 125,
              height: 125,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDPOl5xCE8h8D1FQGZYWx6CzYc-KcRpT5awNOxa26LV4Uv-iOiJp_SlR3F0bFdCT4hsUs&usqp=CAU"),
                      fit: BoxFit.cover),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ],
        )
      ],
    );
  }
}
