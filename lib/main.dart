import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Data gambar
  List<String> images = List.generate(6, (index) => 
  'https://source.unsplash.com/featured/?random');

  // Daftar teks terkait dengan gambar
  List<String> imageTexts = [
    'Covid19Vaccine',
    'Covid19TestResult',
    'EHAC',
    'Covid19Vaccine',
    'Covid19TestResult',
    'EHAC',
     // Jika ada gambar tambahan
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid View Example'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Container(color: Colors.blue, // Warna latar belakang
              child:
           Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Text(
        'Entering Public Space?',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      Text(
        'Stay alert to stay safe',
        style: TextStyle(fontSize: 16),
      ),
      ],
      ),
       SizedBox(width: 75), // Jarak antara teks dan gambar
      Image.network('https://via.placeholder.com/50')
    ],
  ),
),
),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3 kolom
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                ),
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return GridTile(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Image.network(images[index], fit: BoxFit.cover),
                        ),
                        Text(imageTexts[index]), // Teks terkait dengan gambar
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
