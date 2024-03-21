import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab Example'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'For You'),
                Tab(text: 'Following'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // Konten tab pertama
              ListView(
                children: <Widget>[
                  ListTile(
                    leading: FlutterLogo(),
                    title: Text('Data 1'),
                  ),
                  ListTile(
                    leading: FlutterLogo(),
                    title: Text('Data 2'),
                  ),
                  ListTile(
                    leading: FlutterLogo(),
                    title: Text('Data 3'),
                  ),
                ],
              ),
              // Konten tab kedua
              GridView.count(
                crossAxisCount: 2, // 2 kolom
                mainAxisSpacing: 10.0, // Jarak vertikal antara item
                crossAxisSpacing: 10.0, // Jarak horizontal antara item
                padding: EdgeInsets.all(10.0), // 2 kolom
                children: List.generate(6, (index) {
                  return Center(
                    child: Image.network(
                      'https://source.unsplash.com/random/?sig=1', fit: BoxFit.cover),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
