import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Data foto, nama, dan hobi
  final List<Map<String, String>> data = [
    {
      'nama': 'John Doe',
      'hobi': 'Membaca',
      'foto': 'https://source.unsplash.com/featured/?profile',
    },
    {
      'nama': 'Jane Doe',
      'hobi': 'Bersepeda',
      'foto': 'https://source.unsplash.com/featured/?profile',
    },
    {
      'nama': 'Alice Smith',
      'hobi': 'Menulis',
      'foto': 'https://source.unsplash.com/featured/?profile',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView.builder with Card Example'),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(data[index]['foto']!),
                ),
                title: Text(data[index]['nama']!),
                subtitle: Text(data[index]['hobi']!),
              ),
            );
          },
        ),
      ),
    );
  }
}
