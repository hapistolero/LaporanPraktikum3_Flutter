import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            // Gambar latar belakang
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.network(
                'https://img.freepik.com/free-vector/aesthetic-dreamy-background-purple-cloudy-sky-vector-glitter-design_53876-156334.jpg?size=626&ext=jpg&ga=GA1.1.735520172.1710979200&semt=sph',
                fit: BoxFit.cover,
                height: 200.0, // Tinggi gambar latar belakang
              ),
            ),
            // Foto profil di perbatasan
            Positioned(
              top: 150.0, // Penyesuaian posisi vertikal foto profil
              left: 16.0, // Jarak dari tepi kiri
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              ),
            ),
            // Konten utama
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  
                  SizedBox(height: 200.0), // Penyesuaian jarak vertikal dari atas
                   Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          padding: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Text(
                            'Follow',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                  // Informasi profil
                  Row(
                    children: <Widget>[
                      
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Username',
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Bio',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Tombol follow
                     
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
