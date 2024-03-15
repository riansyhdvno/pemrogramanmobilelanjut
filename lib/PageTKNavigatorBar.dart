import 'package:flutter/material.dart';

class PageTKNavigatorBar extends StatelessWidget {
  const PageTKNavigatorBar ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Teknin Komputer',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),//mengasih jarak
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Deskripsi',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0), //tambah margin
                child: Text(
                  'Program Studi Manajemen Informatika (Kampus Kab.'
                      'Pelalawan) merupakan salah satu Program Studi Diluar'
                      'Kampus Utama (PSDKU) Politeknik Negeri Padang yang'
                      'memiliki sejarah dan keterkaitan erat dengan berdirinya'
                      'Akademi Komunitas di Daerah Pelalawan.'
                      'Berangkat dari SK Pendirian Akademi Komunitas Nomor'
                      ': 179/P/2013 Tanggal 26 September 2013, Program'
                      'Studi Diluar Domisili (PDD)'
                      'Kabupaten Pelalawan di awal berdirinya memiliki'
                      'Program Studi D2 Elektro Industri dan D2 Manajemen '
                      'Informatika.',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: MaterialButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('back'),
                color: Colors.orange,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

