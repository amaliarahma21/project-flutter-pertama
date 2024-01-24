import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ArticleItem {
  final Color color;
  final String image;
  final String text;

  ArticleItem(this.color, this.image, this.text);
}

class LatihanListBanner extends StatelessWidget {
  LatihanListBanner({super.key});

  final List<ArticleItem> itemArticle = [
    ArticleItem(
        Colors.blue,
        "https://static.promediateknologi.id/crop/0x0:0x0/640x384/webp/photo/2022/08/24/2711843730.jpeg",
        "PERSIB berasal dari nama Persatuan Sepak Bola Indonesia Bandung, Persib didirikan pada 5 Januai 1919. Dijuluki dengan nama Maung Bandung dan Pangeran Biru."),
    ArticleItem(
        Colors.blue,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsBHcvaodw2iMHZ_X8OKaoiYMx5tczENtfOQ&usqp=CAU",
        "Persib merupakan salah satu klub Perserikatan yang ikut serta dalam membentuk federasi sepak bola Indonesia yaitu PSSI."),
    ArticleItem(
        Colors.blue,
        "https://cdn.antaranews.com/cache/1200x800/2023/08/26/antarafoto-persib-bandung-menang-260823-agr-5.jpg",
        "Menurut statuta PSSI, logo Persib sekarang dilindungi dan tidak dibenarkan untuk diganti dan diubah sebagai penghargaan akan andil klub dalam pendirian PSSI pada tahun 1930.")
  ];

  final List<String> urlImage = [
    "https://static.promediateknologi.id/crop/0x0:0x0/640x384/webp/photo/2022/08/24/2711843730.jpeg",
    "https://static.promediateknologi.id/crop/0x0:0x0/640x384/webp/photo/2022/08/24/2711843730.jpeg",
    "https://static.promediateknologi.id/crop/0x0:0x0/640x384/webp/photo/2022/08/24/2711843730.jpeg",
    "https://static.promediateknologi.id/crop/0x0:0x0/640x384/webp/photo/2022/08/24/2711843730.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 180,
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
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: ListView.separated(
                        itemCount: itemArticle.length,
                        separatorBuilder: (context, index) {
                          return Divider(
                            color: Colors.blue,
                          );
                        },
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(10),
                            height: 100,
                            width: 300,
                            child: Row(
                              children: [
                                Container(
                                  width: 200,
                                  height: 600,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image:
                                        NetworkImage(itemArticle[index].image),
                                  )),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 250,
                                      child: Text(itemArticle[index].text),
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "GALLERY",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: urlImage.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                width: 200,
                                child: Image.network(urlImage[index],
                                    width: 100, height: 200),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
