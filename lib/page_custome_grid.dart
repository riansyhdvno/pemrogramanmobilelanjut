import 'package:flutter/material.dart';

class PageCustomeGrid extends StatefulWidget {
  const PageCustomeGrid({super.key});

  @override
  State<PageCustomeGrid> createState() => PageCustomeGridState();
}

class PageCustomeGridState extends State<PageCustomeGrid> {
  List<Map<String, dynamic>> listMovie = [
    {
      "judul": "Fast X",
      "gambar": "film1.jpg",
      "harga": 45000,
    },
    {
      "judul": "Insidious the Red Door",
      "gambar": "film2.jpg",
      "harga": 35000,
    },
    {
      "judul": "The Nun",
      "gambar": "film3.jpg",
      "harga": 50000,
    },
    {
      "judul": "Comic 8 Casino Kings",
      "gambar": "film4.jpg",
      "harga": 45000,
    },
    {
      "judul": "John Wick",
      "gambar": "film5.jpg",
      "harga": 35000,
    },
    {
      "judul": "Rush Hour",
      "gambar": "film6.jpg",
      "harga": 45000,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custome Grid"),
        backgroundColor: Colors.purple,
      ),
      body: GridView.builder(
          itemCount: listMovie.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return GestureDetector(
              // onTap: () {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (_) => p(listMovie[index])));
              // },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridTile(
                    footer: Container(
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "${listMovie[index]["judul"]}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text("Rp. ${listMovie[index]["harga"]}")
                        ],
                      ),
                    ),
                    child: Image.asset("gambar/${listMovie[index]["gambar"]}")),
              ),
            );
          }),
    );
  }
}